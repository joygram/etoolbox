.class public final Lcom/yotadevices/sdk/EpdConstants$SDK;
.super Ljava/lang/Object;
.source "EpdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDK"
.end annotation


# static fields
.field public static final SDK_API_LEVEL_1:I = 0x1

.field public static final SDK_API_LEVEL_2:I = 0x2

.field public static final SDK_API_LEVEL_3:I = 0x3

.field public static final SDK_API_LEVEL_4:I = 0x4

.field public static final SDK_API_LEVEL_5:I = 0x5

.field public static final SDK_API_LEVEL_6:I = 0x6

.field public static final SDK_API_LEVEL_7:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x7

    return v0
.end method
