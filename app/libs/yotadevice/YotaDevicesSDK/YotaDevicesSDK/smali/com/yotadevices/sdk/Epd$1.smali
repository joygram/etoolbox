.class final Lcom/yotadevices/sdk/Epd$1;
.super Ljava/lang/Object;
.source "Epd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yotadevices/sdk/Epd;->performSingleUpdate(Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "val$view"    # Landroid/view/View;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/yotadevices/sdk/Epd$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yotadevices/sdk/Epd$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/yotadevices/sdk/Epd;->fullUpdate(Landroid/view/View;)V

    .line 427
    return-void
.end method
