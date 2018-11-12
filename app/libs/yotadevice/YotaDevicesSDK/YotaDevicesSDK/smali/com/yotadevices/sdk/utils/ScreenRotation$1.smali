.class Lcom/yotadevices/sdk/utils/ScreenRotation$1;
.super Ljava/lang/Object;
.source "ScreenRotation.java"

# interfaces
.implements Lcom/yotadevices/utils/ScreenRotation$ScreenRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yotadevices/sdk/utils/ScreenRotation;->listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;JLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/utils/ScreenRotation;

.field final synthetic val$callback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;


# direct methods
.method constructor <init>(Lcom/yotadevices/sdk/utils/ScreenRotation;Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/utils/ScreenRotation;
    .param p2, "val$callback"    # Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yotadevices/sdk/utils/ScreenRotation$1;->this$0:Lcom/yotadevices/sdk/utils/ScreenRotation;

    iput-object p2, p0, Lcom/yotadevices/sdk/utils/ScreenRotation$1;->val$callback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation$1;->val$callback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    invoke-interface {v0}, Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;->onRotated()V

    .line 91
    return-void
.end method

.method public onTimedOut()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/ScreenRotation$1;->val$callback:Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;

    invoke-interface {v0}, Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;->onTimedOut()V

    .line 96
    return-void
.end method
