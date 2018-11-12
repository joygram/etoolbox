.class public final Lcom/yotadevices/sdk/EpdNotificationExtender;
.super Ljava/lang/Object;
.source "EpdNotificationExtender.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# instance fields
.field private mCustomViews:Landroid/widget/RemoteViews;

.field private mEpdFullScreenOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/EpdNotificationExtender;->mEpdFullScreenOnly:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yotadevices/sdk/EpdNotificationExtender;->mCustomViews:Landroid/widget/RemoteViews;

    .line 23
    return-void
.end method


# virtual methods
.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 36
    return-object p1
.end method

.method public setCustomEpdContentView(Landroid/widget/RemoteViews;)Lcom/yotadevices/sdk/EpdNotificationExtender;
    .locals 0
    .param p1, "customViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yotadevices/sdk/EpdNotificationExtender;->mCustomViews:Landroid/widget/RemoteViews;

    .line 55
    return-object p0
.end method

.method public setEpdFullScreenOnly(Z)Lcom/yotadevices/sdk/EpdNotificationExtender;
    .locals 0
    .param p1, "epdFullScreenOnly"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/yotadevices/sdk/EpdNotificationExtender;->mEpdFullScreenOnly:Z

    .line 45
    return-object p0
.end method
