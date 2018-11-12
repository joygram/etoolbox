.class final synthetic Lcom/yotadevices/sdk/EpdManager$2$-void_onEpdKeyguardHidden__LambdaImpl0;
.super Ljava/lang/Object;
.source "EpdManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdManager$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onEpdKeyguardHidden__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/yotadevices/epdmanager/IEpdManagerCallback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/yotadevices/sdk/EpdManager$2;->-com_yotadevices_sdk_EpdManager$2_lambda$3(Lcom/yotadevices/epdmanager/IEpdManagerCallback;)V

    return-void
.end method
