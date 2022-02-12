class Profile < ApplicationRecord
    has_one_attached :image

    has_many(:educations, dependent: :destroy)
    accepts_nested_attributes_for(:educations , reject_if: :reject_education_create, allow_destroy: true)

    has_many(:experiences, dependent: :destroy)
    accepts_nested_attributes_for(:experiences , reject_if: :reject_experiences_create, allow_destroy: true)

    has_many(:projects, dependent: :destroy)
    accepts_nested_attributes_for(:projects , reject_if: :reject_projects_create, allow_destroy: true)

    belongs_to :user

    def reject_education_create(education)
        education[:degree].blank? or education[:school].blank? or education[:start].blank? or education[:end].blank?
    end

    def reject_experience_create(experience)
        experiences[:company].blank? or experiences[:position].blank? or experiences[:start].blank? or experiences[:end].blank?
    end

    def reject_project_create(project)
        projects[:title].blank? or projects[:url].blank? or projects[:techstack].blank? 
    end
end