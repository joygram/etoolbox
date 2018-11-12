.class public final Lcom/yotadevices/sdk/EpdConstants$Intent;
.super Ljava/lang/Object;
.source "EpdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intent"
.end annotation


# static fields
.field public static final ACTION_MIRRORING_START_FROM_BS:Ljava/lang/String; = "com.yotadevices.intent.action.MIRRORING_START_FROM_BS"

.field public static final ACTION_MIRRORING_START_FROM_FS:Ljava/lang/String; = "com.yotadevices.intent.action.MIRRORING_START_FROM_FS"

.field public static final ACTION_MIRRORING_STOP:Ljava/lang/String; = "com.yotadevices.intent.action.MIRRORING_STOP"

.field public static final EXTRA_EPD:Ljava/lang/String; = "com.yotadevices.intent.extra.EXTRA_EPD"

.field public static final EXTRA_FLAGS:Ljava/lang/String; = "com.yotadevices.intent.extra.EXTRA_FLAGS"

.field public static final EXTRA_FROM_COVER:Ljava/lang/String; = "com.yotadevices.intent.extra.EXTRA_FROM_COVER"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "com.yotadevices.intent.extra.INTENT"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "com.yotadevices.intent.extra.PENDING_INTENT"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
