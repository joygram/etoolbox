.class public final Lcom/yotadevices/sdk/EpdUpdateParams;
.super Ljava/lang/Object;
.source "EpdUpdateParams.java"


# instance fields
.field private mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-direct {v0}, Lcom/yotadevices/framework/EpdUpdateParams;-><init>()V

    iput-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    .line 16
    return-void
.end method


# virtual methods
.method public getBlackStretch()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getBlackStretch()I

    move-result v0

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getBrightness()I

    move-result v0

    return v0
.end method

.method public getContrast()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getContrast()I

    move-result v0

    return v0
.end method

.method public getCustomAnimation()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getCustomAnimation()[I

    move-result-object v0

    return-object v0
.end method

.method public getDithering()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getEpdViewDithering()I

    move-result v0

    return v0
.end method

.method public getFrameworkEpdParams()Lcom/yotadevices/framework/EpdUpdateParams;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    return-object v0
.end method

.method public getIsRegionalUpdate()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->isIsRegionalUpdate()Z

    move-result v0

    return v0
.end method

.method public getSharpening()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getSharpening()I

    move-result v0

    return v0
.end method

.method public getUpdateModeAdaptiveTimeout()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getUpdateModeAdaptiveTimeout()I

    move-result v0

    return v0
.end method

.method public getUpdateType()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getEpdViewUpdateType()I

    move-result v0

    return v0
.end method

.method public getWhiteStretch()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0}, Lcom/yotadevices/framework/EpdUpdateParams;->getWhiteStretch()I

    move-result v0

    return v0
.end method

.method public setBlackStretch(I)V
    .locals 1
    .param p1, "blackStretch"    # I

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setBlackStretch(I)V

    .line 24
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setBrightness(I)V

    .line 28
    return-void
.end method

.method public setContrast(I)V
    .locals 1
    .param p1, "contrast"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setContrast(I)V

    .line 32
    return-void
.end method

.method public setCustomAnimation([I)V
    .locals 1
    .param p1, "customAnimation"    # [I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setCustomAnimation([I)V

    .line 36
    return-void
.end method

.method public setDithering(I)V
    .locals 1
    .param p1, "dithering"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setEpdViewDithering(I)V

    .line 40
    return-void
.end method

.method public setEpdParams(Lcom/yotadevices/framework/EpdUpdateParams;)V
    .locals 1
    .param p1, "epdUpdateParams"    # Lcom/yotadevices/framework/EpdUpdateParams;

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getWhiteStretch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setWhiteStretch(I)V

    .line 115
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getBlackStretch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setBlackStretch(I)V

    .line 116
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getBrightness()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setBrightness(I)V

    .line 117
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getContrast()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setContrast(I)V

    .line 118
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getCustomAnimation()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setCustomAnimation([I)V

    .line 119
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getEpdViewDithering()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setDithering(I)V

    .line 120
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getEpdViewUpdateType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setUpdateType(I)V

    .line 121
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->isIsRegionalUpdate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setIsRegionalUpdate(Z)V

    .line 122
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getUpdateModeAdaptiveTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setUpdateModeAdaptiveTimeout(I)V

    .line 123
    invoke-virtual {p1}, Lcom/yotadevices/framework/EpdUpdateParams;->getSharpening()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setSharpening(I)V

    .line 113
    return-void
.end method

.method public setEpdParams(Lcom/yotadevices/sdk/EpdUpdateParams;)V
    .locals 1
    .param p1, "epdUpdateParams"    # Lcom/yotadevices/sdk/EpdUpdateParams;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getWhiteStretch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setWhiteStretch(I)V

    .line 103
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getBlackStretch()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setBlackStretch(I)V

    .line 104
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getBrightness()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setBrightness(I)V

    .line 105
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getContrast()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setContrast(I)V

    .line 106
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getCustomAnimation()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setCustomAnimation([I)V

    .line 107
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getDithering()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setDithering(I)V

    .line 108
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getUpdateType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setUpdateType(I)V

    .line 109
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getIsRegionalUpdate()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setIsRegionalUpdate(Z)V

    .line 110
    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getSharpening()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yotadevices/sdk/EpdUpdateParams;->setSharpening(I)V

    .line 101
    return-void
.end method

.method public setIsRegionalUpdate(Z)V
    .locals 1
    .param p1, "isRegionalUpdate"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setIsRegionalUpdate(Z)V

    .line 48
    return-void
.end method

.method public setSharpening(I)V
    .locals 1
    .param p1, "sharpening"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setSharpening(I)V

    .line 52
    return-void
.end method

.method public setUpdateModeAdaptiveTimeout(I)V
    .locals 1
    .param p1, "mUpdateModeAdaptiveTimeout"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setUpdateModeAdaptiveTimeout(I)V

    .line 57
    return-void
.end method

.method public setUpdateType(I)V
    .locals 1
    .param p1, "updateType"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setEpdViewUpdateType(I)V

    .line 44
    return-void
.end method

.method public setWhiteStretch(I)V
    .locals 1
    .param p1, "whiteStretch"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yotadevices/sdk/EpdUpdateParams;->mFrameworkEpdParams:Lcom/yotadevices/framework/EpdUpdateParams;

    invoke-virtual {v0, p1}, Lcom/yotadevices/framework/EpdUpdateParams;->setWhiteStretch(I)V

    .line 20
    return-void
.end method
