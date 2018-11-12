.class public Lcom/yotadevices/sdk/template/TinyWidgetBuilder;
.super Lcom/yotadevices/sdk/template/WidgetBuilder;
.source "TinyWidgetBuilder.java"


# instance fields
.field private mContentView:Landroid/widget/RemoteViews;

.field private mLeftText:Ljava/lang/CharSequence;

.field private mLeftTextDrawablesBottom:I

.field private mLeftTextDrawablesLeft:I

.field private mLeftTextDrawablesRight:I

.field private mLeftTextDrawablesTop:I

.field private mLoadingData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yotadevices/sdk/template/WidgetBuilder;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLoadingData:Z

    .line 19
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLoadingData:Z

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_tiny:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 60
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 61
    sget v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    iget v2, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesLeft:I

    iget v3, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesTop:I

    iget v4, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesRight:I

    .line 62
    iget v5, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesBottom:I

    .line 61
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    .line 63
    sget v1, Lcom/yotadevices/sdk/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 64
    sget v1, Lcom/yotadevices/sdk/R$id;->content:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 65
    invoke-super {p0, p1, v0}, Lcom/yotadevices/sdk/template/WidgetBuilder;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 67
    .end local v0    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_loading_data:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 68
    .restart local v0    # "remoteViews":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getLeftText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadingDataState()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLoadingData:Z

    return v0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/yotadevices/sdk/template/TinyWidgetBuilder;
    .locals 0
    .param p1, "content"    # Landroid/widget/RemoteViews;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 78
    return-object p0
.end method

.method public setLeftText(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/TinyWidgetBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    .line 36
    return-object p0
.end method

.method public setLeftTextCompoundDrawables(IIII)Lcom/yotadevices/sdk/template/TinyWidgetBuilder;
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesLeft:I

    .line 41
    iput p2, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesTop:I

    .line 42
    iput p3, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesRight:I

    .line 43
    iput p4, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLeftTextDrawablesBottom:I

    .line 44
    return-object p0
.end method

.method public setLoadingDataState(Z)Lcom/yotadevices/sdk/template/TinyWidgetBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yotadevices/sdk/template/TinyWidgetBuilder;->mLoadingData:Z

    .line 49
    return-object p0
.end method

.method public bridge synthetic setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-super {p0, p1}, Lcom/yotadevices/sdk/template/WidgetBuilder;->setMaxViewActivity(Landroid/app/PendingIntent;)V

    return-void
.end method
