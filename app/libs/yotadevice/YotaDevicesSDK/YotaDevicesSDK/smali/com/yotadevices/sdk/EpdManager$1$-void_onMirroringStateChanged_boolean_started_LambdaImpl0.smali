.class final synthetic Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;
.super Ljava/lang/Object;
.source "EpdManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onMirroringStateChanged_boolean_started_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$started:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;->val$started:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-boolean v0, p0, Lcom/yotadevices/sdk/EpdManager$1$-void_onMirroringStateChanged_boolean_started_LambdaImpl0;->val$started:Z

    check-cast p1, Lcom/yotadevices/epdmanager/IEpdManagerCallback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/yotadevices/sdk/EpdManager$1;->-com_yotadevices_sdk_EpdManager$1_lambda$1(ZLcom/yotadevices/epdmanager/IEpdManagerCallback;)V

    return-void
.end method
