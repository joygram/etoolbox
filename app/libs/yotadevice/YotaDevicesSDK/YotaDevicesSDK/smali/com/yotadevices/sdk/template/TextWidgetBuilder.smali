.class public Lcom/yotadevices/sdk/template/TextWidgetBuilder;
.super Lcom/yotadevices/sdk/template/WidgetBuilder;
.source "TextWidgetBuilder.java"


# instance fields
.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yotadevices/sdk/template/WidgetBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yotadevices/sdk/R$layout;->template_widget_text:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_text:I

    iget-object v2, p0, Lcom/yotadevices/sdk/template/TextWidgetBuilder;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    invoke-super {p0, p1, v0}, Lcom/yotadevices/sdk/template/WidgetBuilder;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yotadevices/sdk/template/TextWidgetBuilder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-super {p0, p1}, Lcom/yotadevices/sdk/template/WidgetBuilder;->setMaxViewActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/TextWidgetBuilder;
    .locals 0
    .param p1, "mText"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yotadevices/sdk/template/TextWidgetBuilder;->mText:Ljava/lang/CharSequence;

    .line 30
    return-object p0
.end method
