.class abstract Lcom/yotadevices/sdk/template/WidgetBuilder;
.super Ljava/lang/Object;
.source "WidgetBuilder.java"


# instance fields
.field protected mMaxViewPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected apply(Landroid/content/Context;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 26
    sget v0, Lcom/yotadevices/sdk/R$id;->widget_root:I

    iget-object v1, p0, Lcom/yotadevices/sdk/template/WidgetBuilder;->mMaxViewPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 27
    return-object p2
.end method

.method public setMaxViewActivity(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yotadevices/sdk/template/WidgetBuilder;->mMaxViewPendingIntent:Landroid/app/PendingIntent;

    .line 30
    return-void
.end method
