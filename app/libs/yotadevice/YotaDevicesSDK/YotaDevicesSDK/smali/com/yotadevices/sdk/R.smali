.class public final Lcom/yotadevices/sdk/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/R$attr;,
        Lcom/yotadevices/sdk/R$dimen;,
        Lcom/yotadevices/sdk/R$drawable;,
        Lcom/yotadevices/sdk/R$id;,
        Lcom/yotadevices/sdk/R$integer;,
        Lcom/yotadevices/sdk/R$layout;,
        Lcom/yotadevices/sdk/R$string;,
        Lcom/yotadevices/sdk/R$styleable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 5
    .param p0, "packageId"    # I

    .prologue
    const v4, 0xffffff

    .line 338
    sget v1, Lcom/yotadevices/sdk/R$attr;->animationGif:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$attr;->animationGif:I

    .line 339
    sget v1, Lcom/yotadevices/sdk/R$attr;->category:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$attr;->category:I

    .line 340
    sget v1, Lcom/yotadevices/sdk/R$attr;->icon_frontscreen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$attr;->icon_frontscreen:I

    .line 341
    sget v1, Lcom/yotadevices/sdk/R$attr;->invertable:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$attr;->invertable:I

    .line 342
    sget v1, Lcom/yotadevices/sdk/R$attr;->size:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$attr;->size:I

    .line 343
    sget v1, Lcom/yotadevices/sdk/R$dimen;->navigation_panel_height:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$dimen;->navigation_panel_height:I

    .line 344
    sget v1, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_side:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_side:I

    .line 345
    sget v1, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_top:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_top:I

    .line 346
    sget v1, Lcom/yotadevices/sdk/R$drawable;->action_bar_p2b_btn:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->action_bar_p2b_btn:I

    .line 347
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_flip_content_image:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_flip_content_image:I

    .line 348
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_notif_dot_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_notif_dot_line:I

    .line 349
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_notification_shape:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_notification_shape:I

    .line 350
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_button:I

    .line 351
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_button_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_button_white:I

    .line 352
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_hover:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_hover:I

    .line 353
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_hover_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_hover_white:I

    .line 354
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_normal:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_normal:I

    .line 355
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_normal_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_normal_white:I

    .line 356
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_tap:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_tap:I

    .line 357
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_tap_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_ok_tap_white:I

    .line 358
    sget v1, Lcom/yotadevices/sdk/R$drawable;->bs_popup_pattern:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->bs_popup_pattern:I

    .line 359
    sget v1, Lcom/yotadevices/sdk/R$drawable;->dot_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->dot_line:I

    .line 360
    sget v1, Lcom/yotadevices/sdk/R$drawable;->flip_device_animation:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->flip_device_animation:I

    .line 361
    sget v1, Lcom/yotadevices/sdk/R$drawable;->flip_popup_bg:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->flip_popup_bg:I

    .line 362
    sget v1, Lcom/yotadevices/sdk/R$drawable;->flip_the_phone_bg_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->flip_the_phone_bg_black:I

    .line 363
    sget v1, Lcom/yotadevices/sdk/R$drawable;->flip_the_phone_bg_white:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->flip_the_phone_bg_white:I

    .line 364
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_google_icon_hover:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_google_icon_hover:I

    .line 365
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_google_icon_w:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_google_icon_w:I

    .line 366
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_mirror_icon_hover:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_mirror_icon_hover:I

    .line 367
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_mirror_icon_w:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_mirror_icon_w:I

    .line 368
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_screenshot_icon_hover:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_screenshot_icon_hover:I

    .line 369
    sget v1, Lcom/yotadevices/sdk/R$drawable;->glow_screenshot_icon_w:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->glow_screenshot_icon_w:I

    .line 370
    sget v1, Lcom/yotadevices/sdk/R$drawable;->ic_menu_p2b:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->ic_menu_p2b:I

    .line 371
    sget v1, Lcom/yotadevices/sdk/R$drawable;->ic_menu_p2b_active:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->ic_menu_p2b_active:I

    .line 372
    sget v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_back_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_back_button:I

    .line 373
    sget v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_home_white_pixel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_home_white_pixel:I

    .line 374
    sget v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_showkeyboard:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->ic_navbar_showkeyboard:I

    .line 375
    sget v1, Lcom/yotadevices/sdk/R$drawable;->list_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->list_icon:I

    .line 376
    sget v1, Lcom/yotadevices/sdk/R$drawable;->popup_img_rotatethephone:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->popup_img_rotatethephone:I

    .line 377
    sget v1, Lcom/yotadevices/sdk/R$drawable;->popup_pattern:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->popup_pattern:I

    .line 378
    sget v1, Lcom/yotadevices/sdk/R$drawable;->template_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->template_icon:I

    .line 379
    sget v1, Lcom/yotadevices/sdk/R$drawable;->widget_clocks_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->widget_clocks_icon:I

    .line 380
    sget v1, Lcom/yotadevices/sdk/R$drawable;->widget_clocks_icon_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->widget_clocks_icon_black:I

    .line 381
    sget v1, Lcom/yotadevices/sdk/R$drawable;->widget_dot_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->widget_dot_line:I

    .line 382
    sget v1, Lcom/yotadevices/sdk/R$drawable;->widget_footer_buttom_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->widget_footer_buttom_black:I

    .line 383
    sget v1, Lcom/yotadevices/sdk/R$drawable;->widget_footer_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$drawable;->widget_footer_button:I

    .line 384
    sget v1, Lcom/yotadevices/sdk/R$id;->BooksAndMagazines:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->BooksAndMagazines:I

    .line 385
    sget v1, Lcom/yotadevices/sdk/R$id;->Business:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Business:I

    .line 386
    sget v1, Lcom/yotadevices/sdk/R$id;->Children:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Children:I

    .line 387
    sget v1, Lcom/yotadevices/sdk/R$id;->Communication:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Communication:I

    .line 388
    sget v1, Lcom/yotadevices/sdk/R$id;->Cover:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Cover:I

    .line 389
    sget v1, Lcom/yotadevices/sdk/R$id;->Education:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Education:I

    .line 390
    sget v1, Lcom/yotadevices/sdk/R$id;->Entertainment:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Entertainment:I

    .line 391
    sget v1, Lcom/yotadevices/sdk/R$id;->Games:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Games:I

    .line 392
    sget v1, Lcom/yotadevices/sdk/R$id;->HealthAndFitness:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->HealthAndFitness:I

    .line 393
    sget v1, Lcom/yotadevices/sdk/R$id;->Lifestyle:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Lifestyle:I

    .line 394
    sget v1, Lcom/yotadevices/sdk/R$id;->News:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->News:I

    .line 395
    sget v1, Lcom/yotadevices/sdk/R$id;->Panel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Panel:I

    .line 396
    sget v1, Lcom/yotadevices/sdk/R$id;->Personalisation:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Personalisation:I

    .line 397
    sget v1, Lcom/yotadevices/sdk/R$id;->Productivity:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Productivity:I

    .line 398
    sget v1, Lcom/yotadevices/sdk/R$id;->Social:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Social:I

    .line 399
    sget v1, Lcom/yotadevices/sdk/R$id;->Tools:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Tools:I

    .line 400
    sget v1, Lcom/yotadevices/sdk/R$id;->Travel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Travel:I

    .line 401
    sget v1, Lcom/yotadevices/sdk/R$id;->Weather:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->Weather:I

    .line 402
    sget v1, Lcom/yotadevices/sdk/R$id;->background_image:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->background_image:I

    .line 403
    sget v1, Lcom/yotadevices/sdk/R$id;->bottom_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->bottom_line:I

    .line 404
    sget v1, Lcom/yotadevices/sdk/R$id;->btn_back:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->btn_back:I

    .line 405
    sget v1, Lcom/yotadevices/sdk/R$id;->btn_home_app:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->btn_home_app:I

    .line 406
    sget v1, Lcom/yotadevices/sdk/R$id;->button_action:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->button_action:I

    .line 407
    sget v1, Lcom/yotadevices/sdk/R$id;->button_cancel:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->button_cancel:I

    .line 408
    sget v1, Lcom/yotadevices/sdk/R$id;->button_ok:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->button_ok:I

    .line 409
    sget v1, Lcom/yotadevices/sdk/R$id;->content:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->content:I

    .line 410
    sget v1, Lcom/yotadevices/sdk/R$id;->dot_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->dot_line:I

    .line 411
    sget v1, Lcom/yotadevices/sdk/R$id;->extra_large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->extra_large:I

    .line 412
    sget v1, Lcom/yotadevices/sdk/R$id;->fake_bottom:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->fake_bottom:I

    .line 413
    sget v1, Lcom/yotadevices/sdk/R$id;->flip_popup_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->flip_popup_description:I

    .line 414
    sget v1, Lcom/yotadevices/sdk/R$id;->flip_popup_image:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->flip_popup_image:I

    .line 415
    sget v1, Lcom/yotadevices/sdk/R$id;->flip_popup_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->flip_popup_title:I

    .line 416
    sget v1, Lcom/yotadevices/sdk/R$id;->footer:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->footer:I

    .line 417
    sget v1, Lcom/yotadevices/sdk/R$id;->full_screen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->full_screen:I

    .line 418
    sget v1, Lcom/yotadevices/sdk/R$id;->icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->icon:I

    .line 419
    sget v1, Lcom/yotadevices/sdk/R$id;->large:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->large:I

    .line 420
    sget v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->left_text:I

    .line 421
    sget v1, Lcom/yotadevices/sdk/R$id;->loading_data:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->loading_data:I

    .line 422
    sget v1, Lcom/yotadevices/sdk/R$id;->main_layout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->main_layout:I

    .line 423
    sget v1, Lcom/yotadevices/sdk/R$id;->medium:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->medium:I

    .line 424
    sget v1, Lcom/yotadevices/sdk/R$id;->medium_half:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->medium_half:I

    .line 425
    sget v1, Lcom/yotadevices/sdk/R$id;->more:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->more:I

    .line 426
    sget v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->more_image:I

    .line 427
    sget v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->more_layout:I

    .line 428
    sget v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->more_text:I

    .line 429
    sget v1, Lcom/yotadevices/sdk/R$id;->navigation_bar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->navigation_bar:I

    .line 430
    sget v1, Lcom/yotadevices/sdk/R$id;->notification_layout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->notification_layout:I

    .line 431
    sget v1, Lcom/yotadevices/sdk/R$id;->right_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->right_text:I

    .line 432
    sget v1, Lcom/yotadevices/sdk/R$id;->separator:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->separator:I

    .line 433
    sget v1, Lcom/yotadevices/sdk/R$id;->small:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->small:I

    .line 434
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_button:I

    .line 435
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_content:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_content:I

    .line 436
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_icon:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_icon:I

    .line 437
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_line:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_line:I

    .line 438
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_text:I

    .line 439
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_title:I

    .line 440
    sget v1, Lcom/yotadevices/sdk/R$id;->template_widget_title_date:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->template_widget_title_date:I

    .line 441
    sget v1, Lcom/yotadevices/sdk/R$id;->tiny:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->tiny:I

    .line 442
    sget v1, Lcom/yotadevices/sdk/R$id;->widget_root:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$id;->widget_root:I

    .line 443
    sget v1, Lcom/yotadevices/sdk/R$integer;->vibration_time:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$integer;->vibration_time:I

    .line 444
    sget v1, Lcom/yotadevices/sdk/R$layout;->bs_notification:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->bs_notification:I

    .line 445
    sget v1, Lcom/yotadevices/sdk/R$layout;->flip_layout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->flip_layout:I

    .line 446
    sget v1, Lcom/yotadevices/sdk/R$layout;->glowpanel_layout:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->glowpanel_layout:I

    .line 447
    sget v1, Lcom/yotadevices/sdk/R$layout;->modern_widget_footer_temlate_black:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->modern_widget_footer_temlate_black:I

    .line 448
    sget v1, Lcom/yotadevices/sdk/R$layout;->modern_widget_footer_template:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->modern_widget_footer_template:I

    .line 449
    sget v1, Lcom/yotadevices/sdk/R$layout;->navigation_bar:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->navigation_bar:I

    .line 450
    sget v1, Lcom/yotadevices/sdk/R$layout;->splash_screen:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->splash_screen:I

    .line 451
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_footer:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_footer:I

    .line 452
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_header:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_icon_header:I

    .line 453
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_loading_data:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_loading_data:I

    .line 454
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_text:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_text:I

    .line 455
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_text_and_button:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_text_and_button:I

    .line 456
    sget v1, Lcom/yotadevices/sdk/R$layout;->template_widget_tiny:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$layout;->template_widget_tiny:I

    .line 457
    sget v1, Lcom/yotadevices/sdk/R$string;->application_is_updated_on_bs:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->application_is_updated_on_bs:I

    .line 458
    sget v1, Lcom/yotadevices/sdk/R$string;->d_ago:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->d_ago:I

    .line 459
    sget v1, Lcom/yotadevices/sdk/R$string;->flip_popup_default_description:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->flip_popup_default_description:I

    .line 460
    sget v1, Lcom/yotadevices/sdk/R$string;->flip_popup_default_title:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->flip_popup_default_title:I

    .line 461
    sget v1, Lcom/yotadevices/sdk/R$string;->loading_data:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->loading_data:I

    .line 462
    sget v1, Lcom/yotadevices/sdk/R$string;->text_date:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->text_date:I

    .line 463
    sget v1, Lcom/yotadevices/sdk/R$string;->text_full:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->text_full:I

    .line 464
    sget v1, Lcom/yotadevices/sdk/R$string;->text_info:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->text_info:I

    .line 465
    sget v1, Lcom/yotadevices/sdk/R$string;->text_more:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->text_more:I

    .line 466
    sget v1, Lcom/yotadevices/sdk/R$string;->text_no_books:I

    and-int/2addr v1, v4

    shl-int/lit8 v2, p0, 0x18

    or-int/2addr v1, v2

    sput v1, Lcom/yotadevices/sdk/R$string;->text_no_books:I

    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 468
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x18

    if-nez v1, :cond_0

    .line 469
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo:[I

    sget-object v2, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 467
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->GifView2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 473
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->GifView2:[I

    aget v1, v1, v0

    shr-int/lit8 v1, v1, 0x18

    if-nez v1, :cond_2

    .line 474
    sget-object v1, Lcom/yotadevices/sdk/R$styleable;->GifView2:[I

    sget-object v2, Lcom/yotadevices/sdk/R$styleable;->GifView2:[I

    aget v2, v2, v0

    and-int/2addr v2, v4

    shl-int/lit8 v3, p0, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 472
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    :cond_3
    return-void
.end method
