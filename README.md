# Article 2021. Optimizers Comparison

## MLP:
1. Dense(units=250, activation='sigmoid', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros', input_shape=(784,));
2. Dense(units=250, activation='sigmoid', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros');
3. Dense(units=10, activation='sigmoid', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros').

261 510 обучаемых параметров.

|                             Оптимизатор                            |          Тип         |     Точность   на обучающей выборке    |     Точность   на тестовой выборке    |      Время    |
|:------------------------------------------------------------------:|:--------------------:|:--------------------------------------:|:-------------------------------------:|:-------------:|
|           Adadelta     learning_rate=5.0     batch_size=15         |     Лучший случай    |                   100%                 |                 98.48%                |     272 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.373 ± 0.036%           |     273 с.    |
|         SGD_Nesterov     learning_rate=1.0     batch_size=25       |     Лучший случай    |                   100%                 |                 98.50%                |     136 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.372 ± 0.033%           |     143 с.    |
|           Adamax     learning_rate=0.01     batch_size=30          |     Лучший случай    |                   100%                 |                 98.41%                |     150 с.    |
|                                                                    |       В среднем      |                  99.99%                |             98.336 ± 0.033%           |     151 с.    |
|           Adagrad     learning_rate=1.0     batch_size=30          |     Лучший случай    |                   100%                 |                 98.41%                |     137 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.316 ± 0.048%           |     136 с.    |
|             SGD     learning_rate=1.0     batch_size=30            |     Лучший случай    |                   100%                 |                 98.40%                |     119 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.290 ± 0.039%           |     121 с.    |
|        Adam_AMSGrad     learning_rate=0.001     batch_size=20      |     Лучший случай    |                   100%                 |                 98.35%                |     240 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.257 ± 0.030%           |     240 с.    |
|     AdaBelief_AMSGrad     learning_rate=0.001     batch_size=40    |     Лучший случай    |                   100%                 |                 98.36%                |     225 с.    |
|                                                                    |       В среднем      |                   100%                 |             98.234 ± 0.043%           |     226 с.    |
|            Adam     learning_rate=0.001     batch_size=20          |     Лучший случай    |                  99.97%                |                 98.28%                |     211 с.    |
|                                                                    |       В среднем      |             99.965 ± 0.016%            |             98.157 ± 0.051%           |     211 с.    |
|         AdaBelief     learning_rate=0.001     batch_size=10        |     Лучший случай    |                  99.95%                |                 98.20%                |     751 с.    |
|                                                                    |       В среднем      |             99.941 ± 0.011%            |             98.129 ± 0.034%           |     742 с.    |
|           Nadam     learning_rate=0.001     batch_size=30          |     Лучший случай    |                  99.96%                |                 98.23%                |     246 с.    |
|                                                                    |       В среднем      |             99.945 ± 0.027%            |             98.013 ± 0.086%           |     244 с.    |
|      RMSprop_Centered     learning_rate=0.001     batch_size=40    |     Лучший случай    |                  99.99%                |                 98.22%                |     179 с.    |
|                                                                    |       В среднем      |             99.991 ± 0.004%            |             98.006 ± 0.065%           |     179 с.    |
|          RMSprop     learning_rate=0.001     batch_size=40         |     Лучший случай    |                   100%                 |                 98.18%                |     145 с.    |
|                                                                    |       В среднем      |             99.988 ± 0.006%            |             97.986 ± 0.071%           |     144 с.    |

## Dropout-Linear-ReLU-сеть:
1. Dropout(rate=dropout_rate, input_shape=(784,));
2. Dense(units=250, activation='linear', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros');
3. ReLU(max_value=None, negative_slope=0, threshold=0);
4. Dense(units=250, activation='linear', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros');
5. ReLU(max_value=None, negative_slope=0, threshold=0).
6. Dense(units=10, activation='linear', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros').

261 510 обучаемых параметров.

|                                        Оптимизатор                                      |          Тип         |     Точность   на обучающей выборке    |     Точность   на тестовой выборке    |      Время    |
|:---------------------------------------------------------------------------------------:|:--------------------:|:--------------------------------------:|:-------------------------------------:|:-------------:|
|         SGD_Nesterov     learning_rate=0.1     batch_size=40     dropout_rate=0.3       |     Лучший случай    |                  99.97%                |                 98.84%                |     106 с.    |
|                                                                                         |       В среднем      |             99.945 ± 0.022%            |             98.624 ± 0.063%           |     106 с.    |
|             SGD     learning_rate=0.1     batch_size=40     dropout_rate=0.3            |     Лучший случай    |                  99.96%                |                 98.72%                |     106 с.    |
|                                                                                         |       В среднем      |             99.948 ± 0.014%            |             98.588 ± 0.066%           |     106 с.    |
|           Adagrad     learning_rate=0.1     batch_size=20     dropout_rate=0.3          |     Лучший случай    |                  99.98%                |                 98.64%                |     276 с.    |
|                                                                                         |       В среднем      |             99.990 ± 0.003%            |             98.559 ± 0.053%           |     217 с.    |
|           Adadelta     learning_rate=2.0     batch_size=40     dropout_rate=0.2         |     Лучший случай    |                  99.97%                |                 98.69%                |     133 с.    |
|                                                                                         |       В среднем      |             99.959 ± 0.014%            |             98.538 ± 0.074%           |     134 с.    |
|     AdaBelief_AMSGrad     learning_rate=0.001     batch_size=30     dropout_rate=0.3    |     Лучший случай    |                  99.98%                |                 98.68%                |     294 с.    |
|                                                                                         |       В среднем      |             99.963 ± 0.010%            |             98.532 ± 0.056%           |     296 с.    |
|        Adam_AMSGrad     learning_rate=0.001     batch_size=25     dropout_rate=0.3      |     Лучший случай    |                  99.97%                |                 98.63%                |     203 с.    |
|                                                                                         |       В среднем      |             99.975 ± 0.005%            |             98.487 ± 0.049%           |     204 с.    |
|           Adamax     learning_rate=0.01     batch_size=20     dropout_rate=0.2          |     Лучший случай    |                  99.95%                |                 98.64%                |     225 с.    |
|                                                                                         |       В среднем      |             99.955 ± 0.011%            |             98.402 ± 0.078%           |     226 с.    |
|            Adam     learning_rate=0.001     batch_size=35     dropout_rate=0.2          |     Лучший случай    |                  99.92%                |                 98.50%                |     144 с.    |
|                                                                                         |       В среднем      |             99.925 ± 0.011%            |             98.369 ± 0.048%           |     143 с.    |
|           Nadam     learning_rate=0.001     batch_size=40     dropout_rate=0.2          |     Лучший случай    |                  99.94%                |                 98.47%                |     199 с.    |
|                                                                                         |       В среднем      |             99.919 ± 0.016%            |             98.343 ± 0.037%           |     198 с.    |
|         AdaBelief     learning_rate=0.001     batch_size=40     dropout_rate=0.4        |     Лучший случай    |                  99.88%                |                 98.53%                |     214 с.    |
|                                                                                         |       В среднем      |             99.869 ± 0.013%            |             98.295 ± 0.079%           |     213 с.    |
|          RMSprop     learning_rate=0.001     batch_size=40     dropout_rate=0.2         |     Лучший случай    |                  99.79%                |                 98.41%                |     153 с.    |
|                                                                                         |       В среднем      |             99.818 ± 0.025%            |             98.282 ± 0.038%           |     152 с.    |
|      RMSprop_Centered     learning_rate=0.001     batch_size=40     dropout_rate=0.3    |     Лучший случай    |                  99.67%                |                 98.30%                |     185 с.    |
|                                                                                         |       В среднем      |             99.579 ± 0.059%            |             98.116 ± 0.082%           |     185 с.    |

## CNN
1. Conv2D(filters=32, kernel_size=(3, 3), strides=(1, 1), padding='same', data_format=None, dilation_rate=(1, 1), groups=1, activation='relu', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros', input_shape=(28, 28, 1));
2. MaxPooling2D(pool_size=2, strides=2, padding="valid");
3. Conv2D(filters=48, kernel_size=(3, 3), strides=(1, 1), padding='same', data_format=None, dilation_rate=(1, 1), groups=1, activation='relu', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros');
4. MaxPooling2D(pool_size=2, strides=2, padding="valid");
5. Dropout(rate=0.5);
6. Flatten();
7. Dense(units=250, activation='relu', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros');
8. Dropout(rate=0.3);
9. Dense(units=10, activation='softmax', use_bias=True, kernel_initializer='glorot_uniform', bias_initializer='zeros').

2 377 202 обучаемых параметров.

|                              Оптимизатор                            |          Тип         |     Точность   на обучающей выборке    |     Точность   на тестовой выборке    |      Время    |
|:-------------------------------------------------------------------:|:--------------------:|:--------------------------------------:|:-------------------------------------:|:-------------:|
|           Adadelta     learning_rate=2.0     batch_size=500         |     Лучший случай    |                  99.97%                |                 99.56%                |     867 с.    |
|                                                                     |       В среднем      |             99.969 ± 0.004%            |             99.455 ± 0.037%           |     867 с.    |
|          RMSprop     learning_rate=0.001     batch_size=500         |     Лучший случай    |                  99.58%                |                 99.47%                |     886 с.    |
|                                                                     |       В среднем      |             99.958 ± 0.006%            |             99.430 ± 0.021%           |     883 с.    |
|      RMSprop_Centered     learning_rate=0.001     batch_size=500    |     Лучший случай    |                  99.96%                |                 99.50%                |     890 с.    |
|                                                                     |       В среднем      |             99.962 ± 0.005%            |             99.422 ± 0.027%           |     891 с.    |
|           Adamax     learning_rate=0.01     batch_size=500          |     Лучший случай    |                  99.98%                |                 99.48%                |     870 с.    |
|                                                                     |       В среднем      |             99.988 ± 0.003%            |             99.417 ± 0.021%           |     862 с.    |
|        Adam_AMSGrad     learning_rate=0.001     batch_size=500      |     Лучший случай    |                  99.97%                |                 99.49%                |     927 с.    |
|                                                                     |       В среднем      |             99.978 ± 0.005%            |             99.409 ± 0.027%           |     884 с.    |
|     AdaBelief_AMSGrad     learning_rate=0.001     batch_size=500    |     Лучший случай    |                  99.96%                |                 99.46%                |     898 с.    |
|                                                                     |       В среднем      |             99.964 ± 0.003%            |             99.396 ± 0.020%           |     905 с.    |
|           Nadam     learning_rate=0.001     batch_size=500          |     Лучший случай    |                  99.98%                |                 99.45%                |     912 с.    |
|                                                                     |       В среднем      |             99.981 ± 0.004%            |             99.389 ± 0.028%           |     903 с.    |
|         AdaBelief     learning_rate=0.001     batch_size=500        |     Лучший случай    |                  99.98%                |                 99.44%                |     901 с.    |
|                                                                     |       В среднем      |             99.966 ± 0.006%            |             99.377 ± 0.021%           |     898 с.    |
|            Adam     learning_rate=0.001     batch_size=500          |     Лучший случай    |                  99.98%                |                 99.45%                |     872 с.    |
|                                                                     |       В среднем      |             99.983 ± 0.003%            |             99.376 ± 0.038%           |     871 с.    |
|           Adagrad     learning_rate=0.1     batch_size=500          |     Лучший случай    |                  99.89%                |                 99.46%                |     877 с.    |
|                                                                     |       В среднем      |             99.881 ± 0.008%            |             99.366 ± 0.035%           |     870 с.    |
|             SGD     learning_rate=0.1     batch_size=500            |     Лучший случай    |                  99.56%                |                 99.31%                |     869 с.    |
|                                                                     |       В среднем      |             99.554 ± 0.009%            |             99.252 ± 0.020%           |     868 с.    |
|         SGD_Nesterov     learning_rate=0.1     batch_size=500       |     Лучший случай    |                  99.50%                |                 99.30%                |     872 с.    |
|                                                                     |       В среднем      |             99.530 ± 0.015%            |             99.235 ± 0.027%           |     872 с.    |
