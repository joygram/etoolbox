.class public Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;
.super Lcom/yotadevices/sdk/template/WidgetBuilder;
.source "HeaderIconWidgetBuilder.java"


# instance fields
.field private mContentView:Landroid/widget/RemoteViews;

.field private mDate:Ljava/lang/CharSequence;

.field private mIconResource:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yotadevices/sdk/template/WidgetBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_header:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_title:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_icon:I

    iget v2, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mIconResource:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 42
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_content:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 43
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_content:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 44
    iget-object v1, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mDate:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 45
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_title_date:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 50
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/yotadevices/sdk/template/WidgetBuilder;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_title_date:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mDate:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getDate()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mDate:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mIconResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;
    .locals 0
    .param p1, "mContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 68
    return-object p0
.end method

.method public setDate(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;
    .locals 0
    .param p1, "mDate"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mDate:Ljava/lang/CharSequence;

    .line 77
    return-object p0
.end method

.method public setIconResource(I)Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;
    .locals 0
    .param p1, "mIconResource"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mIconResource:I

    .line 59
    return-object p0
.end method

.method public bridge synthetic setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-super {p0, p1}, Lcom/yotadevices/sdk/template/WidgetBuilder;->setMaxViewActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;
    .locals 0
    .param p1, "mText"    # Ljava/lang/CharSequence;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yotadevices/sdk/template/HeaderIconWidgetBuilder;->mTitle:Ljava/lang/CharSequence;

    .line 34
    return-object p0
.end method
