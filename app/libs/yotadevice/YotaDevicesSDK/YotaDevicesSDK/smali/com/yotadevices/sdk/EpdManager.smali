.class public final Lcom/yotadevices/sdk/EpdManager;
.super Ljava/lang/Object;
.source "EpdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;
    }
.end annotation


# static fields
.field private static sCallbackIntId:I

.field private static sInstance:Lcom/yotadevices/sdk/EpdManager;


# instance fields
.field private mEpdCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yotadevices/epdmanager/IEpdManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

.field private final mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

.field private final mService:Lcom/yotadevices/epdmanager/IEpdManager;


# direct methods
.method static synthetic -get0(Lcom/yotadevices/sdk/EpdManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/yotadevices/sdk/EpdManager;->sCallbackIntId:I

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdCallbacks:Ljava/util/Map;

    .line 58
    const-string/jumbo v2, "epd"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/yotadevices/epdmanager/IEpdManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yotadevices/epdmanager/IEpdManager;

    move-result-object v2

    iput-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    .line 62
    const-string/jumbo v2, "mirroring"

    .line 61
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/yotadevices/mirroring/IMirroringManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yotadevices/mirroring/IMirroringManager;

    move-result-object v2

    iput-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    .line 64
    const-string/jumbo v2, "epd_keyguard"

    .line 63
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/yotadevices/keyguard/IEpdKeyguardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v2

    iput-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    new-instance v3, Lcom/yotadevices/sdk/EpdManager$1;

    invoke-direct {v3, p0}, Lcom/yotadevices/sdk/EpdManager$1;-><init>(Lcom/yotadevices/sdk/EpdManager;)V

    invoke-interface {v2, v3}, Lcom/yotadevices/mirroring/IMirroringManager;->addMirroringStateCallback(Lcom/yotadevices/mirroring/IMirroringStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    new-instance v3, Lcom/yotadevices/sdk/EpdManager$2;

    invoke-direct {v3, p0}, Lcom/yotadevices/sdk/EpdManager$2;-><init>(Lcom/yotadevices/sdk/EpdManager;)V

    invoke-interface {v2, v3}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->addEpdKeyguardStateCallback(Lcom/yotadevices/keyguard/IEpdKeyguardStateCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 111
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lcom/yotadevices/sdk/EpdManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/yotadevices/sdk/EpdManager;->sInstance:Lcom/yotadevices/sdk/EpdManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/yotadevices/sdk/EpdManager;

    invoke-direct {v0}, Lcom/yotadevices/sdk/EpdManager;-><init>()V

    sput-object v0, Lcom/yotadevices/sdk/EpdManager;->sInstance:Lcom/yotadevices/sdk/EpdManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/yotadevices/sdk/EpdManager;->sInstance:Lcom/yotadevices/sdk/EpdManager;

    return-object v0
.end method


# virtual methods
.method synthetic -com_yotadevices_sdk_EpdManager_lambda$4(Ljava/lang/String;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    return-void
.end method

.method public disableGesture(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "gesture"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v1, p1, p2}, Lcom/yotadevices/epdmanager/IEpdManager;->disableGesture(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableGesture(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "gesture"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v1, p1, p2}, Lcom/yotadevices/epdmanager/IEpdManager;->enableGesture(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public goToSleep()V
    .locals 6

    .prologue
    .line 384
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 383
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 385
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 387
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 386
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEpdLocked()Z
    .locals 3

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "isEpdLocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    invoke-interface {v2}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->isEpdKeyguardEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 255
    .end local v1    # "isEpdLocked":Z
    :cond_0
    :goto_0
    return v1

    .line 252
    .restart local v1    # "isEpdLocked":Z
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEpdThreeFingerLockEnabled()Z
    .locals 2

    .prologue
    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v1}, Lcom/yotadevices/epdmanager/IEpdManager;->isEpdThreeFingerLockEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMirroringStarted()Z
    .locals 2

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    invoke-interface {v1}, Lcom/yotadevices/mirroring/IMirroringManager;->isMirroringStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public lockEpd()V
    .locals 2

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    invoke-interface {v1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->showEpdKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockEpdTouchPanel()V
    .locals 2

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v1}, Lcom/yotadevices/epdmanager/IEpdManager;->lockEpdTouchPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public lockFront()V
    .locals 2

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    invoke-interface {v1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->showDefaultKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerEpdCallbacks(Landroid/content/Context;Lcom/yotadevices/sdk/EpdCallbacks;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "epdCallbacks"    # Lcom/yotadevices/sdk/EpdCallbacks;

    .prologue
    .line 121
    sget v2, Lcom/yotadevices/sdk/EpdManager;->sCallbackIntId:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/yotadevices/sdk/EpdManager;->sCallbackIntId:I

    .line 122
    .local v2, "callbackIntId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "callbackId":Ljava/lang/String;
    new-instance v0, Lcom/yotadevices/sdk/EpdManager$3;

    invoke-direct {v0, p0, p2}, Lcom/yotadevices/sdk/EpdManager$3;-><init>(Lcom/yotadevices/sdk/EpdManager;Lcom/yotadevices/sdk/EpdCallbacks;)V

    .line 149
    .local v0, "callback":Lcom/yotadevices/epdmanager/IEpdManagerCallback$Stub;
    iget-object v4, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdCallbacks:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :try_start_0
    invoke-virtual {v0}, Lcom/yotadevices/epdmanager/IEpdManagerCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;

    invoke-direct {v5, p0, v1}, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;-><init>(Lcom/yotadevices/sdk/EpdManager;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return v2

    .line 152
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startMirroring()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    invoke-interface {v1}, Lcom/yotadevices/mirroring/IMirroringManager;->startMirroring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopMirroring()V
    .locals 2

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mMirroringManager:Lcom/yotadevices/mirroring/IMirroringManager;

    invoke-interface {v1}, Lcom/yotadevices/mirroring/IMirroringManager;->stopMirroring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockEpd()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdManager;->unlockEpd(Z)V

    .line 185
    return-void
.end method

.method public unlockEpd(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    invoke-interface {v1, p1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->hideEpdKeyguard(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockEpdTouchPanel()V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v1}, Lcom/yotadevices/epdmanager/IEpdManager;->unlockEpdTouchPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unlockFront()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdManager;->unlockFront(Z)V

    .line 224
    return-void
.end method

.method public unlockFront(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .prologue
    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    invoke-interface {v1, p1}, Lcom/yotadevices/keyguard/IEpdKeyguardManager;->hideDefaultKeyguard(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterEpdCallbacks(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackIntId"    # I

    .prologue
    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "callbackId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/yotadevices/sdk/EpdManager;->mService:Lcom/yotadevices/epdmanager/IEpdManager;

    invoke-interface {v2, v0}, Lcom/yotadevices/epdmanager/IEpdManager;->unregisterEpdManagerCallbacks(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 6

    .prologue
    .line 402
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 401
    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 403
    .local v1, "pm":Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "wakeUp"

    const-string/jumbo v5, ""

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
