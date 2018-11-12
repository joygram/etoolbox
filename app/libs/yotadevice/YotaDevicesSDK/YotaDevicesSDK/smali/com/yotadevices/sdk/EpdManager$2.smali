.class Lcom/yotadevices/sdk/EpdManager$2;
.super Lcom/yotadevices/keyguard/IEpdKeyguardStateCallback$Stub;
.source "EpdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yotadevices/sdk/EpdManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardHidden__LambdaImpl0;,
        Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardShown__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/EpdManager;


# direct methods
.method static synthetic -com_yotadevices_sdk_EpdManager$2_lambda$2(Lcom/yotadevices/epdmanager/IEpdManagerCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/yotadevices/epdmanager/IEpdManagerCallback;

    .prologue
    .line 92
    :try_start_0
    invoke-interface {p0}, Lcom/yotadevices/epdmanager/IEpdManagerCallback;->onEpdLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic -com_yotadevices_sdk_EpdManager$2_lambda$3(Lcom/yotadevices/epdmanager/IEpdManagerCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/yotadevices/epdmanager/IEpdManagerCallback;

    .prologue
    .line 103
    :try_start_0
    invoke-interface {p0}, Lcom/yotadevices/epdmanager/IEpdManagerCallback;->onEpdUnlocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/yotadevices/sdk/EpdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/EpdManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yotadevices/sdk/EpdManager$2;->this$0:Lcom/yotadevices/sdk/EpdManager;

    invoke-direct {p0}, Lcom/yotadevices/keyguard/IEpdKeyguardStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdKeyguardHidden()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$2;->this$0:Lcom/yotadevices/sdk/EpdManager;

    invoke-static {v0}, Lcom/yotadevices/sdk/EpdManager;->-get0(Lcom/yotadevices/sdk/EpdManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardHidden__LambdaImpl0;

    invoke-direct {v1}, Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardHidden__LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    return-void
.end method

.method public onEpdKeyguardShown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$2;->this$0:Lcom/yotadevices/sdk/EpdManager;

    invoke-static {v0}, Lcom/yotadevices/sdk/EpdManager;->-get0(Lcom/yotadevices/sdk/EpdManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardShown__LambdaImpl0;

    invoke-direct {v1}, Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardShown__LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 89
    return-void
.end method
