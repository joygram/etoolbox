.class Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;
.super Ljava/lang/Object;
.source "RotationAlgorithm.java"

# interfaces
.implements Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yotadevices/sdk/utils/RotationAlgorithm;->turnScreenOffIfRotated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;


# direct methods
.method constructor <init>(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated()V
    .locals 3

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get5(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get3(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get0(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->showEpdKeyguard()V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get4(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get0(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->hideEpdKeyguard(Z)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;->onPhoneRotatedToEpd()V

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get1(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get4(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get0(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->hideDefaultKeyguard(Z)V

    .line 241
    :cond_5
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get0(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->showEpdKeyguard()V

    .line 243
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;->onPhoneRotatedToFS()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onTimedOut()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;->this$0:Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-static {v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->-get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;->onRotationCancelled()V

    .line 251
    :cond_0
    return-void
.end method
