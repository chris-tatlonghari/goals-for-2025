# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Temporary until I switch to paid instance of Render
User.find_or_create_by!(first_name: 'Chris', passkey: '95194')
User.find_or_create_by!(first_name: 'Jake', passkey: '56072')
User.find_or_create_by!(first_name: 'Caleb', passkey: '58785')
User.find_or_create_by!(first_name: 'Jimmy', passkey: '88172')
User.find_or_create_by!(first_name: 'Brycen', passkey: '45888')
