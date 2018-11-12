.class Lcom/yotadevices/sdk/EpdManager$1;
.super Lcom/yotadevices/mirroring/IMirroringStateCallback$Stub;
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
        Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/EpdManager;


# direct methods
.method static synthetic -com_yotadevices_sdk_EpdManager$1_lambda$1(ZLcom/yotadevices/epdmanager/IEpdManagerCallback;)V
    .locals 1
    .param p0, "started"    # Z
    .param p1, "callback"    # Lcom/yotadevices/epdmanager/IEpdManagerCallback;

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    :try_start_0
    invoke-interface {p1}, Lcom/yotadevices/epdmanager/IEpdManagerCallback;->onMirroringStarted()V

    .line 0
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-interface {p1}, Lcom/yotadevices/epdmanager/IEpdManagerCallback;->onMirroringStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/yotadevices/sdk/EpdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/EpdManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yotadevices/sdk/EpdManager$1;->this$0:Lcom/yotadevices/sdk/EpdManager;

    invoke-direct {p0}, Lcom/yotadevices/mirroring/IMirroringStateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMirroringStateChanged(Z)V
    .locals 2
    .param p1, "started"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$1;->this$0:Lcom/yotadevices/sdk/EpdManager;

    invoke-static {v0}, Lcom/yotadevices/sdk/EpdManager;->-get0(Lcom/yotadevices/sdk/EpdManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;

    invoke-direct {v1, p1}, Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    return-void
.end method
