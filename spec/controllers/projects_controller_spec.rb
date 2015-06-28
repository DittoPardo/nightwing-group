require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  let(:user) { create(:user) }
  let(:project) { create(:project, name: "Pierwszy projekt", description: "test", owner: user) }

  before do
    sign_in user
  end

  describe 'GET index' do

    it 'exposes all products' do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do

    it "responds successfully with an HTTP 200 status code" do
      get :show, id: project.id

      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the show template" do
      get :show, id: project.id

      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    it "assigns a new Project to project" do
      get :new
      expect(controller.project).to be_a_new(Project)
    end
  end

  it "renders the :new template" do
    get :new
    expect(response).to render_template("new")
  end


  describe 'GET #edit' do
    it "renders the :edit template" do
      get :edit, id: project.id
      expect(response).to render_template :edit
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "saves the new project in the database" do
        expect{
          post :create, project: attributes_for(:project,
          owner: user)
        }.to change(Project, :count).by(1)
      end
    end
    context "with invalid attributes" do
      it "does not save the new project in the database" do
        expect{
          post :create,
            project: attributes_for(:invalid_project)
        }.not_to change(Project, :count)
      end

      it "re-renders the :new template" do
        post :create,
          project: attributes_for(:invalid_project)
        expect(response).to render_template :new
      end
    end
  end

  describe 'PATCH #update' do
    it "changes project's attributes" do
      patch :update, id: project.id,
      project: attributes_for(:project, name: 'New name')
      project.reload
      expect(project.name).to eq('New name')
    end
  end

  describe 'DELETE #destroy' do
    let!(:project_new) { create(:project, owner: user) }
    it "deletes the contact" do
      expect{
        delete :destroy, id: project_new.id
      }.to change(Project,:count).by(-1)
    end
  end
end
