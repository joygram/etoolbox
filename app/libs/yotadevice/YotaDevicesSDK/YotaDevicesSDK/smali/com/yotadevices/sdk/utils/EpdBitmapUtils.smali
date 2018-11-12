.class public Lcom/yotadevices/sdk/utils/EpdBitmapUtils;
.super Ljava/lang/Object;
.source "EpdBitmapUtils.java"


# static fields
.field public static DEFAULT_IMAGE_BRIGHTNESS:F

.field public static DEFAULT_IMAGE_CONTRAST:F

.field public static DEFAULT_IMAGE_SHARPNESS:F

.field public static final invertMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "yotadevices_sdk_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_CONTRAST:F

    .line 62
    const/high16 v0, -0x3e100000    # -30.0f

    sput v0, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_BRIGHTNESS:F

    .line 74
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_SHARPNESS:F

    .line 246
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->invertMatrix:[F

    .line 29
    return-void

    .line 246
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBitmapContrastBrightness(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "contrast"    # F
    .param p2, "brightness"    # F

    .prologue
    const/4 v7, 0x0

    .line 189
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v4, 0x14

    new-array v4, v4, [F

    .line 190
    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    aput p2, v4, v5

    .line 191
    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput p1, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    aput p2, v4, v5

    .line 192
    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput p1, v4, v5

    const/16 v5, 0xd

    aput v7, v4, v5

    const/16 v5, 0xe

    aput p2, v4, v5

    .line 193
    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x12

    aput v5, v4, v6

    const/16 v5, 0x13

    aput v7, v4, v5

    .line 189
    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 194
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 195
    .local v3, "ret":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 196
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 197
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 198
    invoke-virtual {v0, p0, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 199
    return-object v3
.end method

.method public static ditherBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dithering"    # I

    .prologue
    .line 141
    const/4 v1, -0x1

    .line 142
    .local v1, "internalDithering":I
    const/4 v0, 0x0

    .line 145
    .local v0, "binary":Z
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 146
    const/4 v1, 0x1

    .line 173
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    .line 174
    invoke-static {p0, v1, v0}, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->ditherBitmapForEpd(Landroid/graphics/Bitmap;IZ)V

    .line 176
    :cond_1
    return-object p0

    .line 147
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 148
    const/4 v1, 0x2

    goto :goto_0

    .line 149
    :cond_3
    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 150
    const/4 v1, 0x3

    goto :goto_0

    .line 151
    :cond_4
    const/16 v2, 0x9

    if-ne p1, v2, :cond_5

    .line 152
    const/4 v1, 0x4

    goto :goto_0

    .line 153
    :cond_5
    const/16 v2, 0xb

    if-ne p1, v2, :cond_6

    .line 154
    const/4 v1, 0x5

    goto :goto_0

    .line 155
    :cond_6
    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 156
    const/4 v1, 0x1

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 158
    :cond_7
    const/4 v2, 0x5

    if-ne p1, v2, :cond_8

    .line 159
    const/4 v1, 0x2

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 162
    const/4 v1, 0x3

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 164
    :cond_9
    const/16 v2, 0xa

    if-ne p1, v2, :cond_a

    .line 165
    const/4 v1, 0x4

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_a
    const/16 v2, 0xc

    if-ne p1, v2, :cond_0

    .line 168
    const/4 v1, 0x5

    .line 169
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native ditherBitmapForEpd(Landroid/graphics/Bitmap;IZ)V
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 233
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 234
    .local v4, "height":I
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 235
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 237
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 242
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 243
    .local v7, "resizedBitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static invertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 257
    if-nez p0, :cond_0

    .line 258
    return-object v4

    .line 261
    :cond_0
    new-instance v1, Landroid/graphics/ColorMatrix;

    sget-object v4, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->invertMatrix:[F

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 262
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 263
    .local v3, "p":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 266
    .local v2, "dest":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    return-object v2
.end method

.method public static prepareImageForEpd(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_0

    return-object v2

    .line 100
    :cond_0
    sget v2, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_CONTRAST:F

    sget v3, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_BRIGHTNESS:F

    .line 99
    invoke-static {p1, v2, v3}, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->changeBitmapContrastBrightness(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, "contrast":Landroid/graphics/Bitmap;
    if-eq v0, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    :cond_1
    sget v2, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->DEFAULT_IMAGE_SHARPNESS:F

    invoke-static {p0, v0, v2}, Lcom/yotadevices/sdk/utils/EpdBitmapUtils;->sharpenBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, "sharpen":Landroid/graphics/Bitmap;
    if-eq v1, v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    :cond_2
    return-object v1
.end method

.method public static sharpenBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "weight"    # F

    .prologue
    const/4 v7, 0x1

    .line 281
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 283
    .local v3, "mRS":Landroid/renderscript/RenderScript;
    sget-object v4, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    .line 282
    invoke-static {v3, p1, v4, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 284
    .local v1, "mInAllocation":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 286
    .local v2, "mOutAllocation":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v0

    .line 287
    .local v0, "d":Landroid/renderscript/ScriptIntrinsicConvolve3x3;
    const/16 v4, 0x9

    new-array v4, v4, [F

    .line 288
    neg-float v5, p2

    const/4 v6, 0x0

    aput v5, v4, v6

    neg-float v5, p2

    aput v5, v4, v7

    neg-float v5, p2

    const/4 v6, 0x2

    aput v5, v4, v6

    .line 289
    neg-float v5, p2

    const/4 v6, 0x3

    aput v5, v4, v6

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/4 v6, 0x4

    aput v5, v4, v6

    neg-float v5, p2

    const/4 v6, 0x5

    aput v5, v4, v6

    .line 290
    neg-float v5, p2

    const/4 v6, 0x6

    aput v5, v4, v6

    neg-float v5, p2

    const/4 v6, 0x7

    aput v5, v4, v6

    neg-float v5, p2

    const/16 v6, 0x8

    aput v5, v4, v6

    .line 287
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V

    .line 292
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V

    .line 293
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 294
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    .line 295
    return-object p1
.end method

.method public static final toGrayscale(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bmpOriginal"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x0

    .line 211
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "bmpGrayscale":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 213
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 214
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 215
    .local v2, "cm":Landroid/graphics/ColorMatrix;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 216
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 217
    .local v3, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 218
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 219
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v1, p0, v6, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 220
    return-object v0
.end method
