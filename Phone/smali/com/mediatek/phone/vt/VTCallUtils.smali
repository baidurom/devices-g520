.class public final Lcom/mediatek/phone/vt/VTCallUtils;
.super Ljava/lang/Object;
.source "VTCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;
    }
.end annotation


# static fields
.field private static final BITMAP_COMPRESS_QUALITY:I = 0x64

.field private static final CHANGE_FILE_PERMISSION:Ljava/lang/String; = "chmod 640 "

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "VTCallUtils"

.field private static final VDBG:Z = true

.field public static final VT_CALL_END:Ljava/lang/String; = "android.phone.extra.VT_CALL_END"

.field public static final VT_CALL_START:Ljava/lang/String; = "android.phone.extra.VT_CALL_START"

.field private static sNumbersDefault:[Ljava/lang/String;

.field private static sNumbersNone:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 279
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "12531"

    aput-object v1, v0, v2

    const-string v1, "+8612531"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersNone:[Ljava/lang/String;

    .line 280
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "12535"

    aput-object v1, v0, v2

    const-string v1, "13800100011"

    aput-object v1, v0, v3

    const-string v1, "+8612535"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "+8613800100011"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersDefault:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public static checkVTFile()V
    .locals 7

    .prologue
    .line 135
    const-string v5, "start checkVTFile() ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 137
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    const-string v5, "checkVTFile() : the default pic file not exists , create it ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, btp1:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 158
    const-string v5, "checkVTFile() : the default user select pic file not exists , create it ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 161
    :try_start_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 163
    .local v1, btp2:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 164
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    .end local v1           #btp2:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    const-string v5, "checkVTFile() : the default pic2 file not exists , create it ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 178
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, btp3:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 190
    .end local v2           #btp3:Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 192
    const-string v5, "checkVTFile() : the default user select pic2 file not exists , create it ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 195
    :try_start_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020114

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 197
    .local v3, btp4:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/mediatek/phone/vt/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 198
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - Bitmap.isRecycled() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 208
    .end local v3           #btp4:Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    const-string v5, "end checkVTFile() ! "

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 210
    return-void

    .line 151
    :catch_0
    move-exception v4

    .line 152
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 168
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 169
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 185
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 186
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 202
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 203
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;
    .locals 4
    .parameter "number"

    .prologue
    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersNone:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v1, arrayListNone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils;->sNumbersDefault:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v0, arrayListDefault:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 303
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    .line 314
    :goto_0
    return-object v2

    .line 306
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVTTimingMode - return:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 311
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    goto :goto_0

    .line 314
    :cond_1
    sget-object v2, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    goto :goto_0
.end method

.method public static isVTActive()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public static isVTIdle()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public static isVTRinging()Z
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .parameter "call"

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isVideo()Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "VTCallUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static placeVTCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;I)I
    .locals 10
    .parameter "phone"
    .parameter "number"
    .parameter "contactRef"
    .parameter "simId"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x2

    .line 326
    const/4 v4, 0x0

    .line 329
    .local v4, status:I
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeVTCall: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "simId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 332
    sget-object v7, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 467
    :goto_0
    return v6

    .line 335
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isIdleSsString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    const-string v7, "the number for VT call is idle ss string"

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "VTCallUtils"

    const-string v7, "Exception from vtDial()"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    const/4 v4, 0x2

    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :goto_1
    move v6, v4

    .line 467
    goto :goto_0

    .line 342
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    instance-of v7, p0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v7, :cond_4

    .line 344
    :cond_3
    const-string v7, "the number for VT call is idle uri string"

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 350
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile()V

    .line 351
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingState()V

    .line 352
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/settings/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> placeVTCall(): simId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 357
    const/4 v3, 0x0

    .line 367
    .local v3, nCSNetType:I
    const-string v7, "gsm.cs.network.type"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "==> placeVTCall(): nCSNetType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 374
    if-eq v9, v3, :cond_5

    if-ne v6, v3, :cond_5

    .line 378
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    if-nez v6, :cond_6

    .line 379
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.phone.extra.VT_CALL_START"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 382
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 383
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v7

    iget-boolean v7, v7, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v7, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 385
    const-string v6, "- set VTManager open ! "

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, v7, v8}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V

    .line 395
    const-string v6, "- finish set VTManager open ! "

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v6, :cond_7

    .line 401
    const-string v6, "- set VTManager ready ! "

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 405
    const-string v6, "- finish set VTManager ready ! "

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 411
    :goto_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->placeCallRegister(Lcom/android/internal/telephony/Phone;)V

    .line 420
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6, p0, p1}, Lcom/android/internal/telephony/CallManager;->vtDial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 423
    .local v0, cn:Lcom/android/internal/telephony/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vtDial() returned: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 425
    if-nez v0, :cond_9

    .line 426
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_8

    .line 429
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialed MMI code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x1

    .line 432
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMMICommandToService(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 408
    .end local v0           #cn:Lcom/android/internal/telephony/Connection;
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    goto :goto_2

    .line 434
    .restart local v0       #cn:Lcom/android/internal/telephony/Connection;
    :cond_8
    const/4 v4, 0x2

    goto/16 :goto_1

    .line 437
    :cond_9
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 444
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-string v1, "content"

    .line 445
    .local v1, content:Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    .line 447
    .local v5, userDataObject:Ljava/lang/Object;
    if-nez v5, :cond_a

    .line 448
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 453
    :cond_a
    instance-of v6, v5, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v6, :cond_b

    .line 454
    check-cast v5, Lcom/android/internal/telephony/CallerInfo;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iput-object p2, v5, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    goto/16 :goto_1

    .line 456
    .restart local v5       #userDataObject:Ljava/lang/Object;
    :cond_b
    check-cast v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v5           #userDataObject:Ljava/lang/Object;
    iget-object v6, v5, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p2, v6, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitName"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v5, "saveMyBitmap()..."

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 223
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 225
    const/4 v2, 0x0

    .line 228
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 233
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 235
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 242
    :goto_1
    :try_start_2
    const-string v5, "Change file visit right for mediaserver process"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 640 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    .end local v0           #command:Ljava/lang/String;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 260
    :goto_3
    return-void

    .line 229
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 237
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 248
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 249
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    const-string v5, "exception happens when change file permission"

    invoke-static {v5}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 257
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 258
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static showVTIncomingCallUi()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    const-string v2, "showVTIncomingCallUi()..."

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/settings/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 112
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 115
    .local v0, app:Lcom/android/phone/PhoneApp;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "call"

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 121
    sget-object v2, Lcom/android/phone/PhoneApp$WakeState;->FULL:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 124
    const-string v2, "- updating notification from showVTIncomingCall()..."

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->displayCallScreen(Z)V

    .line 128
    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
