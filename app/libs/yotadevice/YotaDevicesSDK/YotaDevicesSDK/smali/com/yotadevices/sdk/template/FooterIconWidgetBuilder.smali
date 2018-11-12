.class public Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
.super Lcom/yotadevices/sdk/template/WidgetBuilder;
.source "FooterIconWidgetBuilder.java"


# instance fields
.field private mContentView:Landroid/widget/RemoteViews;

.field private mIconResource:I

.field protected mLeftPendingIntent:Landroid/app/PendingIntent;

.field private mLeftText:Ljava/lang/CharSequence;

.field private mLoadingData:Z

.field private mMoreIconResource:I

.field protected mMoreViewPendingIntent:Landroid/app/PendingIntent;

.field private mMoreViewText:Ljava/lang/CharSequence;

.field private mRightText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/yotadevices/sdk/template/WidgetBuilder;-><init>()V

    .line 30
    iput v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mIconResource:I

    .line 31
    iput v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    .line 33
    iput-boolean v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLoadingData:Z

    .line 22
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLoadingData:Z

    if-nez v1, :cond_5

    .line 84
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_footer:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    sget v1, Lcom/yotadevices/sdk/R$id;->icon:I

    iget v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mIconResource:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 87
    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 88
    sget v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    sget v1, Lcom/yotadevices/sdk/R$id;->icon:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 91
    :cond_0
    sget v1, Lcom/yotadevices/sdk/R$id;->content:I

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 92
    sget v1, Lcom/yotadevices/sdk/R$id;->content:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 93
    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mRightText:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    .line 94
    sget v1, Lcom/yotadevices/sdk/R$id;->right_text:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 100
    sget v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    sget v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    sget v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 105
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 108
    :cond_1
    iget v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    if-eqz v1, :cond_2

    .line 109
    sget v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 110
    sget v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 112
    sget v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    iget v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 113
    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 114
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    :cond_2
    iget v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewText:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 118
    sget v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 119
    sget v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 122
    :cond_3
    invoke-super {p0, p1, v0}, Lcom/yotadevices/sdk/template/WidgetBuilder;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 96
    :cond_4
    sget v1, Lcom/yotadevices/sdk/R$id;->right_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mRightText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 97
    sget v1, Lcom/yotadevices/sdk/R$id;->right_text:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 124
    .end local v0    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_5
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_loading_data:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 125
    .restart local v0    # "remoteViews":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mIconResource:I

    return v0
.end method

.method public getLeftText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLoadingDataState()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLoadingData:Z

    return v0
.end method

.method public getRightText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mRightText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "content"    # Landroid/widget/RemoteViews;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mContentView:Landroid/widget/RemoteViews;

    .line 144
    return-object p0
.end method

.method public setIconResource(I)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mIconResource:I

    .line 135
    return-object p0
.end method

.method public setLeftAction(Landroid/app/PendingIntent;)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftPendingIntent:Landroid/app/PendingIntent;

    .line 78
    return-object p0
.end method

.method public setLeftText(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLeftText:Ljava/lang/CharSequence;

    .line 45
    return-object p0
.end method

.method public setLoadingDataState(Z)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mLoadingData:Z

    .line 55
    return-object p0
.end method

.method public bridge synthetic setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-super {p0, p1}, Lcom/yotadevices/sdk/template/WidgetBuilder;->setMaxViewActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMoreViewAction(Landroid/app/PendingIntent;I)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "imageResource"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    .line 71
    iput p2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewText:Ljava/lang/CharSequence;

    .line 73
    return-object p0
.end method

.method public setMoreViewAction(Landroid/app/PendingIntent;Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewPendingIntent:Landroid/app/PendingIntent;

    .line 64
    iput-object p2, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreViewText:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mMoreIconResource:I

    .line 66
    return-object p0
.end method

.method public setRightText(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yotadevices/sdk/template/FooterIconWidgetBuilder;->mRightText:Ljava/lang/CharSequence;

    .line 50
    return-object p0
.end method
