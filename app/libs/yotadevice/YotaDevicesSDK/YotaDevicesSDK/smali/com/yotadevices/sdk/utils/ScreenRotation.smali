.class public final Lcom/yotadevices/sdk/utils/ScreenRotation;
.super Ljava/lang/Object;
.source "ScreenRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;
    }
.end annotation


# static fields
.field public static final TIMEOUT_DEFAULT:J = 0x1770L


# instance fields
.field private mCallback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

.field private mInstance:Lcom/yotadevices/utils/ScreenRotation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/yotadevices/utils/ScreenRotation;

    invoke-direct {v0, p1}, Lcom/yotadevices/utils/ScreenRotation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mInstance:Lcom/yotadevices/utils/ScreenRotation;

    .line 50
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mCallback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mInstance:Lcom/yotadevices/utils/ScreenRotation;

    invoke-virtual {v0}, Lcom/yotadevices/utils/ScreenRotation;->cancel()V

    .line 110
    iput-object v1, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mCallback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    .line 104
    return-void
.end method

.method public cancelToast()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mInstance:Lcom/yotadevices/utils/ScreenRotation;

    invoke-virtual {v0}, Lcom/yotadevices/utils/ScreenRotation;->cancelToast()V

    .line 113
    return-void
.end method

.method public listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    .prologue
    .line 59
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Lcom/yotadevices/sdk/utils/ScreenRotation;->listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;J)V

    .line 58
    return-void
.end method

.method public listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;J)V
    .locals 8
    .param p1, "callback"    # Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;
    .param p2, "timeout"    # J

    .prologue
    .line 68
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yotadevices/sdk/utils/ScreenRotation;->listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;JLjava/lang/String;J)V

    .line 67
    return-void
.end method

.method public listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;JLjava/lang/String;J)V
    .locals 7
    .param p1, "callback"    # Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;
    .param p2, "timeout"    # J
    .param p4, "toastMessage"    # Ljava/lang/String;
    .param p5, "vibrationTime"    # J

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mCallback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    .line 89
    new-instance v1, Lcom/yotadevices/sdk/utils/ScreenRotation$1;

    invoke-direct {v1, p0, p1}, Lcom/yotadevices/sdk/utils/ScreenRotation$1;-><init>(Lcom/yotadevices/sdk/utils/ScreenRotation;Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;)V

    .line 101
    .local v1, "instanceCallback":Lcom/yotadevices/utils/ScreenRotation$ScreenRotationCallback;
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation;->mInstance:Lcom/yotadevices/utils/ScreenRotation;

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/yotadevices/utils/ScreenRotation;->listen(Lcom/yotadevices/utils/ScreenRotation$ScreenRotationCallback;JLjava/lang/String;J)V

    .line 81
    return-void
.end method
