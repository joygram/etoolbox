.class public final Lcom/yotadevices/sdk/Epd$Dithering;
.super Ljava/lang/Object;
.source "Epd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/Epd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dithering"
.end annotation


# static fields
.field public static final DITHER_ATKINSON:I = 0x2

.field public static final DITHER_ATKINSON_BINARY:I = 0x3

.field public static final DITHER_BURKES:I = 0x7

.field public static final DITHER_BURKES_BINARY:I = 0x8

.field public static final DITHER_DEFAULT:I = 0x0

.field public static final DITHER_FLOYD_STEINBERG:I = 0x4

.field public static final DITHER_FLOYD_STEINBERG_BINARY:I = 0x5

.field public static final DITHER_NONE:I = 0x1

.field public static final DITHER_SIERRA_LITE:I = 0xb

.field public static final DITHER_SIERRA_LITE_BINARY:I = 0xc

.field public static final DITHER_STUCKI:I = 0x9

.field public static final DITHER_STUCKI_BINARY:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
