class PlanController < ApplicationController
  def index
    @plans = Plan.all.order("id DESC") #id를 내림차순으로 정렬
  end

  def new 
  end

  def create
    @plan = Plan.new
    @plan.title = params[:title] # 모델의 title에 연결하여 plan_title 값을 저장
    @plan.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @plan.content = params[:content] # 모델의 content에 연결하여 plan_content 값을 저장
    @plan.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @plan.avatar = params[:avatar]
    @plan.latitude = params[:latitude]
    @plan.longitude = params[:longitude]
    @plan.save

    redirect_to '/plan/index'
  end


  def destroy 
    @plan = Plan.find(params[:plan_id])
    @plan.destroy

    redirect_to '/plan/index'
  end

  def edit
    @plan = Plan.find(params[:plan_id]) #모델에서 plan에 plan_id를 검색해서 가져옴
  end

  def update
    @plan = Plan.find(params[:plan_id])
    @plan.title = params[:title] # 모델의 title에 연결하여 plan_title 값을 저장
    @plan.sub_title = params[:sub_title] # 모델의 sub_title에 연결하여 sub_title 값을 저장
    @plan.content = params[:content] # 모델의 content에 연결하여 plan_content 값을 저장
    @plan.status = params[:status] # 모델의 status에 연결하여 status 값을 저장
    @plan.latitude = params[:latitude]
    @plan.longitude = params[:longitude]
    @plan.save
    
    redirect_to '/plan/index'
  end

  def status_update
    @plan = Plan.find(params[:plan_id])
    @plan.status = params[:status]
    @plan.save

    redirect_to '/plan/show/@plan.id'
  end

  def show
    @plan = Plan.find(params[:plan_id])
    @x = 37.33062744906317
    @y = 127.11086061761277
  end
end