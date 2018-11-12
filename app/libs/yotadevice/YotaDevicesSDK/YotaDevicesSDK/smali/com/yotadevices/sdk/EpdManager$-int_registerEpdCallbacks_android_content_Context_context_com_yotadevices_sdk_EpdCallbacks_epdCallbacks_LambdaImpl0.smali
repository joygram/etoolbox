.class final synthetic Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;
.super Ljava/lang/Object;
.source "EpdManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$callbackId:Ljava/lang/String;

.field private synthetic val$this:Lcom/yotadevices/sdk/EpdManager;


# direct methods
.method public synthetic constructor <init>(Lcom/yotadevices/sdk/EpdManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;->val$this:Lcom/yotadevices/sdk/EpdManager;

    iput-object p2, p0, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;->val$callbackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;->val$this:Lcom/yotadevices/sdk/EpdManager;

    iget-object v1, p0, Lcom/yotadevices/sdk/EpdManager$-int_registerEpdCallbacks_android_content_Context_context_com_yotadevices_sdk_EpdCallbacks_epdCallbacks_LambdaImpl0;->val$callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yotadevices/sdk/EpdManager;->-com_yotadevices_sdk_EpdManager_lambda$4(Ljava/lang/String;)V

    return-void
.end method
