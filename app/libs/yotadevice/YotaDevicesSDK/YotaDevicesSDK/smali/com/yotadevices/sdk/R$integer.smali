.class public final Lcom/yotadevices/sdk/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static vibration_time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    const/high16 v0, 0x50000

    sput v0, Lcom/yotadevices/sdk/R$integer;->vibration_time:I

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
