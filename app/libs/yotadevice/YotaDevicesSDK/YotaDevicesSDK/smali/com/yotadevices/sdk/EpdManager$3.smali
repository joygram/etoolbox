.class Lcom/yotadevices/sdk/EpdManager$3;
.super Lcom/yotadevices/epdmanager/IEpdManagerCallback$Stub;
.source "EpdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yotadevices/sdk/EpdManager;->registerEpdCallbacks(Landroid/content/Context;Lcom/yotadevices/sdk/EpdCallbacks;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/EpdManager;

.field final synthetic val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;


# direct methods
.method constructor <init>(Lcom/yotadevices/sdk/EpdManager;Lcom/yotadevices/sdk/EpdCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/EpdManager;
    .param p2, "val$epdCallbacks"    # Lcom/yotadevices/sdk/EpdCallbacks;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yotadevices/sdk/EpdManager$3;->this$0:Lcom/yotadevices/sdk/EpdManager;

    iput-object p2, p0, Lcom/yotadevices/sdk/EpdManager$3;->val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;

    invoke-direct {p0}, Lcom/yotadevices/epdmanager/IEpdManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStartedOnEpd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public onEpdLocked()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$3;->val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;

    invoke-interface {v0}, Lcom/yotadevices/sdk/EpdCallbacks;->onEpdLocked()V

    .line 125
    return-void
.end method

.method public onEpdUnlocked()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$3;->val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;

    invoke-interface {v0}, Lcom/yotadevices/sdk/EpdCallbacks;->onEpdUnlocked()V

    .line 130
    return-void
.end method

.method public onMirroringStarted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$3;->val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;

    invoke-interface {v0}, Lcom/yotadevices/sdk/EpdCallbacks;->onMirroringStarted()V

    .line 135
    return-void
.end method

.method public onMirroringStopped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$3;->val$epdCallbacks:Lcom/yotadevices/sdk/EpdCallbacks;

    invoke-interface {v0}, Lcom/yotadevices/sdk/EpdCallbacks;->onMirroringStopped()V

    .line 140
    return-void
.end method
