class AdminsController < ApplicationController
  before_action :authenticate_admin!, only: [:index,:new,:show,:create,:destroy]
  before_action :set_admin, only: [:destroy,:show]

  def index
    @admins = Admin.load_admins(page: params[:page],per_page: params[:per_page])
  end

  def new
    @admin = Admin.new
  end

  def show
  end

  def create
    @admin = Admin.new(admin_params)
    respond_to do |format|
      if @admin.save
        NotificaitonMailer.admin_pass(params[:admin][:email],params[:admin][:password]).deliver_later
        format.html {redirect_to dashboard_path,notice: t("admins.created")}
        format.json { render json: @admin }
      else
        format.html {render :new ,notice: t("admins.created_error")}
        format.json { render json: {
            data: {
              status_code: 500,
              errors: @admin.to_hash.merge(full_messages: @admin.errors.full_messages)
            }
          }
       }
      end
    end

  end

  def destroy
    respond_to do |format|
      if current_admin.id != @admin.id
        format.html {redirect_to dashboard_path, notice: t("admins.destroyed") }
        format.json { render json: @admin }
      else
        format.html {redirect_to dashboard_path, notice: t("admins.destroyed_error") }
        format.json { render json: {data: {
              status_code: 500,
              error: t("admins.destroyed_error")
            }
          }
        }
      end
    end

  end

  private
  def admin_params
    params.require(:admin).permit(:name,:lastname,:email,:username,:password,:password_confirmation)
  end
  def set_admin
    @admin = Admin.find_by_id(params[:id])
  end
end
