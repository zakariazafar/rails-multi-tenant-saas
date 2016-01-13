class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :async

  validate :email_is_unique, on: :create
  validate :subdomain_is_unique, on: :create

  after_validation :create_tenant

  after_create :create_account
  
  # def confirmation_required?
  # 		false
  # end

  private

  def create_account
  	account = Account.new(:email=>email,:subdomain=>subdomain)
  	account.save!
  end

  def create_tenant
    return false unless self.errors.empty?
    # if its a new record, create the tenant
    # for edits, do not create
    if self.new_record?
      Apartment::Tenant.create(subdomain)
    end
    Apartment::Tenant.switch!(subdomain)
  end

  # Check for the uniqueness of the email
  def email_is_unique

  	# Do not validate email if errors 
  	# are already present
  	
  	return false unless self.errors[:email].empty?
    if email.present?
    	unless Account.find_by_email(email).nil?
    		errors.add(:email," is already used")
    	end
    end
  end

  # Check for the uniqueness of the subdomain
  def subdomain_is_unique

    # Do not validate subdomain if errors 
    # are already present
    
    return false unless self.errors[:subdomain].empty?
    if subdomain.present?
        unless Account.find_by_subdomain(subdomain).nil?
          errors.add(:subdomain," is already used")
        end
        if Apartment::Elevators::Subdomain.excluded_subdomains.include?(subdomain)
          errors.add(:subdomain,"is not a valid subdomain")
        end
    end
  end

end
