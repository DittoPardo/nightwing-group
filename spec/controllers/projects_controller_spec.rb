require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  let(:user) { build(:user) }
  let(:project) { create(:project, name: "Pierwszy projekt", description: "test") }

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
      expect(assigns(project)).to be_a_new(Project)
    end
  end

  it "renders the :new template" do
    get :new
    expect(response).to render_template :new
  end

end
