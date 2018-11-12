.class public Lcom/yotadevices/sdk/template/CustomWidgetBuilder;
.super Lcom/yotadevices/sdk/template/WidgetBuilder;
.source "CustomWidgetBuilder.java"


# instance fields
.field private mLayout:I

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yotadevices/sdk/template/WidgetBuilder;-><init>()V

    .line 28
    iput p1, p0, Lcom/yotadevices/sdk/template/CustomWidgetBuilder;->mLayout:I

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yotadevices/sdk/template/CustomWidgetBuilder;->mLayout:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    invoke-super {p0, p1, v0}, Lcom/yotadevices/sdk/template/WidgetBuilder;->apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yotadevices/sdk/template/CustomWidgetBuilder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    invoke-super {p0, p1}, Lcom/yotadevices/sdk/template/WidgetBuilder;->setMaxViewActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/yotadevices/sdk/template/CustomWidgetBuilder;
    .locals 0
    .param p1, "mText"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yotadevices/sdk/template/CustomWidgetBuilder;->mText:Ljava/lang/CharSequence;

    .line 33
    return-object p0
.end method
