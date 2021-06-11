.class Lcom/tns/ErrorReport;
.super Ljava/lang/Object;
.source "ErrorReport.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tns/ErrorReport$LogcatTab;,
        Lcom/tns/ErrorReport$ExceptionTab;,
        Lcom/tns/ErrorReport$Pager;
    }
.end annotation


# static fields
.field public static final ERROR_FILE_NAME:Ljava/lang/String; = "hasError"

.field private static final EXTRA_ERROR_REPORT_MSG:Ljava/lang/String; = "msg"

.field private static final EXTRA_ERROR_REPORT_VALUE:I = 0x1

.field private static final EXTRA_NATIVESCRIPT_ERROR_REPORT:Ljava/lang/String; = "NativeScriptErrorMessage"

.field private static final EXTRA_PID:Ljava/lang/String; = "pID"

.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1

.field private static activity:Landroidx/appcompat/app/AppCompatActivity;

.field private static checkingForPermissions:Z

.field private static exceptionMsg:Ljava/lang/String;

.field private static logcatMsg:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tns/ErrorReport;->checkingForPermissions:Z

    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    sput-object v1, Lcom/tns/ErrorReport;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sput-object p1, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 119
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/tns/ErrorReport;)Lcom/google/android/material/tabs/TabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tns/ErrorReport;

    .line 46
    iget-object v0, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tns/ErrorReport;)Landroidx/viewpager/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/tns/ErrorReport;

    .line 46
    iget-object v0, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/tns/ErrorReport;->exceptionMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroidx/appcompat/app/AppCompatActivity;
    .locals 1

    .line 46
    sget-object v0, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/tns/ErrorReport;->logcatMsg:Ljava/lang/String;

    return-object v0
.end method

.method private addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0
    .param p1, "tabLayout"    # Lcom/google/android/material/tabs/TabLayout;

    .line 293
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 294
    return-void
.end method

.method private static createErrorFile(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 297
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "hasError"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 298
    .local v0, "errFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    nop

    .end local v0    # "errFile":Ljava/io/File;
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ErrorReport"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method static getErrorMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 164
    const/4 v0, 0x0

    .line 167
    .local v0, "ps":Ljava/io/PrintStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .local v2, "content":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v2    # "content":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    .line 177
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "content":Ljava/lang/String;
    :goto_0
    nop

    .line 178
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 182
    return-object v2

    .line 177
    .end local v2    # "content":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 180
    :cond_0
    throw v1
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-class v0, Lcom/tns/ErrorReportActivity;

    .line 227
    .local v0, "errorActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    const-string v3, "NativeScriptErrorMessage"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const v2, 0x14008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    return-object v1

    .line 224
    .end local v0    # "errorActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLogcat(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pId"    # Ljava/lang/String;

    .line 193
    :try_start_0
    const-string v0, "logcat -d"

    .line 194
    .local v0, "logcatCommand":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 196
    .local v1, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v3, "log":Ljava/lang/StringBuilder;
    const-string v4, ""

    .line 201
    .local v4, "line":Ljava/lang/String;
    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "lineSeparator":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_1

    .line 203
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 213
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "lineSeparator":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    goto :goto_1

    .line 210
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to read logcat"

    .line 212
    .local v1, "content":Ljava/lang/String;
    const-string v2, "TNS.Android"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 215
    .end local v1    # "content":Ljava/lang/String;
    .local v0, "content":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method static hasIntent(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 236
    const/4 v0, 0x0

    const-string v1, "NativeScriptErrorMessage"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isCheckingForPermissions()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/tns/ErrorReport;->checkingForPermissions:Z

    return v0
.end method

.method static killProcess(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 149
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 153
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 154
    return-void
.end method

.method public static resetCheckingForPermissions()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tns/ErrorReport;->checkingForPermissions:Z

    .line 77
    return-void
.end method

.method static startActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lcom/tns/ErrorReport;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_0
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "PID":Ljava/lang/String;
    const-string v2, "pID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p0}, Lcom/tns/ErrorReport;->createErrorFile(Landroid/content/Context;)V

    .line 136
    :try_start_0
    invoke-static {p0, v0}, Lcom/tns/ErrorReport;->startPendingErrorActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t send pending intent! Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ErrorReport"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    invoke-static {p0}, Lcom/tns/ErrorReport;->killProcess(Landroid/content/Context;)V

    .line 143
    const/4 v2, 0x1

    return v2
.end method

.method static startPendingErrorActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 159
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, v0, p1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 88
    const/4 v1, 0x1

    :try_start_0
    const-class v2, Landroidx/core/app/ActivityCompat;

    const-string v3, "checkSelfPermission"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v2, "checkSelfPermissionMethod":Ljava/lang/reflect/Method;
    nop

    .line 97
    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 99
    .local v3, "permission":I
    if-eqz v3, :cond_0

    .line 101
    const-class v6, Landroidx/core/app/ActivityCompat;

    const-string v8, "requestPermissions"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/app/Activity;

    aput-object v11, v10, v7

    sget-object v11, Lcom/tns/ErrorReport;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v10, v1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 103
    .local v6, "requestPermissionsMethod":Ljava/lang/reflect/Method;
    sput-boolean v1, Lcom/tns/ErrorReport;->checkingForPermissions:Z

    .line 105
    new-array v8, v9, [Ljava/lang/Object;

    aput-object p0, v8, v7

    sget-object v7, Lcom/tns/ErrorReport;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    aput-object v7, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v4

    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .end local v2    # "checkSelfPermissionMethod":Ljava/lang/reflect/Method;
    .end local v3    # "permission":I
    .end local v6    # "requestPermissionsMethod":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_1

    .line 107
    :catch_0
    move-exception v2

    goto :goto_0

    .line 89
    :catch_1
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :cond_1
    return-void

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    const-string v3, "Couldn\'t resolve permissions"

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-static {p0}, Lcom/tns/Util;->isDebuggableApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_2
    return-void

    .line 115
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method buildUI()V
    .locals 10

    .line 242
    sget-object v0, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tns/ErrorReport;->exceptionMsg:Ljava/lang/String;

    .line 246
    const-string v1, "pID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "processId":Ljava/lang/String;
    invoke-static {v1}, Lcom/tns/ErrorReport;->getLogcat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tns/ErrorReport;->logcatMsg:Ljava/lang/String;

    .line 249
    iget-object v2, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_activity"

    const-string v5, "layout"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 251
    .local v2, "errActivityId":I
    sget-object v3, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 253
    iget-object v3, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "toolbar"

    invoke-virtual {v3, v6, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 255
    .local v3, "toolBarId":I
    sget-object v4, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    .line 256
    .local v4, "toolbar":Landroidx/appcompat/widget/Toolbar;
    sget-object v6, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6, v4}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 258
    iget-object v6, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "tabLayout"

    invoke-virtual {v6, v8, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 260
    .local v6, "tabLayoutId":I
    sget-object v7, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    iput-object v7, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 261
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    const-string v9, "Exception"

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 262
    iget-object v7, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    const-string v9, "Logcat"

    invoke-virtual {v8, v9}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 263
    iget-object v7, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 264
    iget-object v7, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/tns/ErrorReport;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pager"

    invoke-virtual {v7, v9, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 266
    .local v5, "pagerId":I
    sget-object v7, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v7, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager;

    iput-object v7, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 268
    new-instance v7, Lcom/tns/ErrorReport$Pager;

    sget-object v8, Lcom/tns/ErrorReport;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v8}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    iget-object v9, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v9}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lcom/tns/ErrorReport$Pager;-><init>(Lcom/tns/ErrorReport;Landroidx/fragment/app/FragmentManager;I)V

    .line 270
    .local v7, "adapter":Lcom/tns/ErrorReport$Pager;
    iget-object v8, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8, v7}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 271
    iget-object v8, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v9, Lcom/tns/ErrorReport$1;

    invoke-direct {v9, p0}, Lcom/tns/ErrorReport$1;-><init>(Lcom/tns/ErrorReport;)V

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 289
    iget-object v8, p0, Lcom/tns/ErrorReport;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, v8}, Lcom/tns/ErrorReport;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout;)V

    .line 290
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 316
    iget-object v0, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 317
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 306
    iget-object v0, p0, Lcom/tns/ErrorReport;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 307
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 312
    return-void
.end method
