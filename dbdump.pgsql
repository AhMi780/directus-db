PGDMP     '                    y        	   defaultdb    13.4    13.1 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16406 	   defaultdb    DATABASE     ^   CREATE DATABASE defaultdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE defaultdb;
                doadmin    false                        2615    16407 	   data_meta    SCHEMA        CREATE SCHEMA data_meta;
    DROP SCHEMA data_meta;
                doadmin    false            �            1259    16586    brfss    TABLE       CREATE TABLE data_meta.brfss (
    var_id text NOT NULL,
    var_name text,
    var_source text,
    title_short text,
    title_card text,
    title_page0 text,
    data_cat text,
    data_subcat text,
    area_id1 text,
    topic_id1 text,
    area_id2 text,
    topic_id2 text,
    area_id3 text,
    topic_id3 text,
    tags boolean,
    flag_opinion double precision,
    flag_behavior double precision,
    flag_outcome double precision,
    flag_measure double precision,
    public_view double precision,
    sequence_report_indata double precision,
    var_original text,
    title_page text,
    subtitle_page text,
    question_text text,
    indicator_text boolean,
    detail_extra text,
    scale_original text,
    scale_transformation text,
    outcome_analyzed text,
    units text,
    n_observations double precision,
    title_pre text,
    title_barchart text,
    ylabel_barchart text,
    title_splitbar text,
    xlabel_splitbar text,
    title_interaction1 text,
    ylabel_interaction text,
    title_interaction2 text
);
    DROP TABLE data_meta.brfss;
    	   data_meta         heap    doadmin    false    6            �            1259    16512    ess    TABLE       CREATE TABLE data_meta.ess (
    var_id text NOT NULL,
    var_name text,
    var_source text,
    title_short boolean,
    title_card text,
    title_page text,
    data_cat text,
    data_subcat text,
    area_id1 text,
    topic_id1 text,
    area_id2 text,
    topic_id2 text,
    area_id3 text,
    topic_id3 text,
    tags boolean,
    flag_opinion double precision,
    flag_behavior double precision,
    flag_outcome double precision,
    flag_index double precision,
    public_view double precision,
    sequence_report_indata double precision,
    var_original text,
    title_page0 text,
    subtitle_page text,
    question_text text,
    indicator_text boolean,
    detail_extra boolean,
    scale_original text,
    scale_transformation text,
    outcome_analyzed text,
    units text,
    n_observations boolean,
    title_pre text,
    title_map text,
    title_correlation text,
    ylabel_correlation text,
    title_splitbar text,
    ylabel_splitbar text,
    title_regression text,
    ylabel_regression text
);
    DROP TABLE data_meta.ess;
    	   data_meta         heap    doadmin    false    6            �            1259    16654 	   frequency    TABLE     �   CREATE TABLE data_meta.frequency (
    variable_name text,
    level_name text,
    level_color text,
    level_order integer,
    source_id text,
    pct double precision,
    id text
);
     DROP TABLE data_meta.frequency;
    	   data_meta         heap    doadmin    false    6            �            1259    16818 	   area_meta    TABLE     q   CREATE TABLE public.area_meta (
    id text NOT NULL,
    area_title text NOT NULL,
    area_description text
);
    DROP TABLE public.area_meta;
       public         heap    doadmin    false                       0    0    TABLE area_meta    COMMENT     G   COMMENT ON TABLE public.area_meta IS 'Comprehensive list of variable';
          public          doadmin    false    204                       0    0    COLUMN area_meta.area_title    COMMENT     G   COMMENT ON COLUMN public.area_meta.area_title IS 'Label for the area';
          public          doadmin    false    204                       0    0 !   COLUMN area_meta.area_description    COMMENT     R   COMMENT ON COLUMN public.area_meta.area_description IS 'Description of the area';
          public          doadmin    false    204            �            1259    16981    brfss    TABLE     �  CREATE TABLE public.brfss (
    id text NOT NULL,
    var_name text,
    var_source text,
    title_card text,
    title_page0 text,
    data_cat text,
    data_subcat text,
    area_id1 text,
    topic_id1 text,
    area_id2 text,
    topic_id2 text,
    area_id3 boolean,
    topic_id3 text,
    tags boolean,
    flag_opinion double precision,
    flag_behavior double precision,
    flag_outcome double precision,
    flag_measure double precision,
    public_view double precision,
    sequence_report_indata double precision,
    var_original text,
    title_page text,
    subtitle_page text,
    question_text text,
    indicator_text boolean,
    detail_extra text,
    scale_original text,
    scale_transformation text,
    outcome_analyzed text,
    units text,
    n_observations double precision,
    title_pre text,
    title_barchart text,
    ylabel_barchart text,
    title_splitbar text,
    xlabel_splitbar text,
    title_interaction1 text,
    ylabel_interaction text,
    title_interaction2 text
);
    DROP TABLE public.brfss;
       public         heap    doadmin    false            �            1259    16850 	   core_meta    TABLE     �  CREATE TABLE public.core_meta (
    id text NOT NULL,
    var_name text NOT NULL,
    var_source text NOT NULL,
    title_card text NOT NULL,
    title_page text NOT NULL,
    data_cat text,
    data_subcat text,
    topic_id1 text,
    topic_id2 text,
    topic_id3 text,
    flag_opinion boolean,
    flag_behavior boolean,
    flag_outcome boolean,
    flag_measure boolean,
    public_view boolean,
    sequence_report_indata numeric,
    sequence_report_intopic numeric
);
    DROP TABLE public.core_meta;
       public         heap    doadmin    false                       0    0    TABLE core_meta    COMMENT     c   COMMENT ON TABLE public.core_meta IS 'Fields used to populate site naviation, specifically cards';
          public          doadmin    false    208                       0    0    COLUMN core_meta.id    COMMENT     J   COMMENT ON COLUMN public.core_meta.id IS 'Sitewide unique variable name';
          public          doadmin    false    208                       0    0    COLUMN core_meta.var_name    COMMENT     X   COMMENT ON COLUMN public.core_meta.var_name IS 'Unique variable name within a dataset';
          public          doadmin    false    208                       0    0    COLUMN core_meta.var_source    COMMENT     L   COMMENT ON COLUMN public.core_meta.var_source IS 'Data source of variable';
          public          doadmin    false    208                       0    0    COLUMN core_meta.title_card    COMMENT     q   COMMENT ON COLUMN public.core_meta.title_card IS 'Title used to display on a card view of this variable report';
          public          doadmin    false    208                       0    0    COLUMN core_meta.title_page    COMMENT     q   COMMENT ON COLUMN public.core_meta.title_page IS 'Title of the variable report displayed on the report page h1';
          public          doadmin    false    208                       0    0    COLUMN core_meta.data_cat    COMMENT     t   COMMENT ON COLUMN public.core_meta.data_cat IS 'Within-data top level category (usually from the original dataset';
          public          doadmin    false    208                        0    0    COLUMN core_meta.data_subcat    COMMENT     �   COMMENT ON COLUMN public.core_meta.data_subcat IS 'Within Data secondary category, used for sorting on dataset pages (child of cat)';
          public          doadmin    false    208            !           0    0    COLUMN core_meta.topic_id1    COMMENT     E   COMMENT ON COLUMN public.core_meta.topic_id1 IS 'Topic of variable';
          public          doadmin    false    208            "           0    0    COLUMN core_meta.topic_id2    COMMENT     N   COMMENT ON COLUMN public.core_meta.topic_id2 IS 'Topic (second) of variable';
          public          doadmin    false    208            #           0    0    COLUMN core_meta.topic_id3    COMMENT     K   COMMENT ON COLUMN public.core_meta.topic_id3 IS 'Third topic of variable';
          public          doadmin    false    208            $           0    0    COLUMN core_meta.flag_opinion    COMMENT     L   COMMENT ON COLUMN public.core_meta.flag_opinion IS 'Type of variable flag';
          public          doadmin    false    208            %           0    0    COLUMN core_meta.flag_behavior    COMMENT     M   COMMENT ON COLUMN public.core_meta.flag_behavior IS 'Type of variable flag';
          public          doadmin    false    208            &           0    0 '   COLUMN core_meta.sequence_report_indata    COMMENT     g   COMMENT ON COLUMN public.core_meta.sequence_report_indata IS 'Order in which to show in dataset page';
          public          doadmin    false    208            '           0    0 (   COLUMN core_meta.sequence_report_intopic    COMMENT     ]   COMMENT ON COLUMN public.core_meta.sequence_report_intopic IS 'Order to show in topic page';
          public          doadmin    false    208            �            1259    17002    core_meta_test    TABLE     �   CREATE TABLE public.core_meta_test (
    id text NOT NULL,
    var_name text,
    var_source text,
    title_card text,
    title_page text,
    data_cat text,
    data_subcat text,
    topic_id1 text,
    topic_id2 text,
    topic_id3 boolean
);
 "   DROP TABLE public.core_meta_test;
       public         heap    doadmin    false            �            1259    16975    ess    TABLE     �  CREATE TABLE public.ess (
    id text NOT NULL,
    var_name text,
    var_source text,
    title_card text,
    title_page text,
    data_cat text,
    data_subcat text,
    area_id1 text,
    topic_id1 text,
    area_id2 text,
    topic_id2 text,
    area_id3 text,
    topic_id3 text,
    tags text,
    flag_opinion double precision,
    flag_behavior double precision,
    flag_outcome double precision,
    flag_index double precision,
    public_view double precision,
    sequence_report_indata double precision,
    var_original text,
    title_page0 text,
    subtitle_page text,
    question_text text,
    indicator_text text,
    detail_extra text,
    scale_original text,
    scale_transformation text,
    outcome_analyzed text,
    units text,
    n_observations text,
    title_pre text,
    title_map text,
    title_correlation text,
    ylabel_correlation text,
    title_splitbar text,
    ylabel_splitbar text,
    title_regression text,
    ylabel_regression text
);
    DROP TABLE public.ess;
       public         heap    doadmin    false            �            1259    17070    core_meta_view    VIEW     �  CREATE VIEW public.core_meta_view AS
 SELECT ess.id,
    ess.var_name,
    ess.var_source,
    ess.title_card,
    ess.title_page,
    ess.data_cat,
    ess.data_subcat,
    ess.topic_id1,
    ess.topic_id2,
    ess.topic_id3
   FROM public.ess
UNION
 SELECT brfss.id,
    brfss.var_name,
    brfss.var_source,
    brfss.title_card,
    brfss.title_page,
    brfss.data_cat,
    brfss.data_subcat,
    brfss.topic_id1,
    brfss.topic_id2,
    brfss.topic_id3
   FROM public.brfss;
 !   DROP VIEW public.core_meta_view;
       public          doadmin    false    212    212    212    212    212    212    212    212    212    212    213    213    213    213    213    213    213    213    213    213            �            1259    16826    data_source_meta    TABLE     �  CREATE TABLE public.data_source_meta (
    id text NOT NULL,
    source_short_name text NOT NULL,
    source_long_name text NOT NULL,
    source_description_original text,
    source_description text NOT NULL,
    source_data_type text NOT NULL,
    source_flag_opinion boolean,
    source_flag_behavior boolean,
    source_topic text NOT NULL,
    source_population text,
    source_variables text,
    source_url_orig text,
    source_url_internal text NOT NULL,
    source_geo_short text NOT NULL,
    source_geo text NOT NULL,
    source_geo_detail text,
    source_time_period text NOT NULL,
    source_periodicity text NOT NULL,
    source_sequence_home integer,
    source_sequence integer,
    source_sample_size_cols integer,
    source_sample_size_rows integer,
    source_wikipedia_id text,
    source_wikidata_id text,
    source_twitter text,
    source_re3data text,
    source_banner_image text
);
 $   DROP TABLE public.data_source_meta;
       public         heap    doadmin    false            (           0    0    TABLE data_source_meta    COMMENT     O   COMMENT ON TABLE public.data_source_meta IS 'Description of metadata sources';
          public          doadmin    false    205            )           0    0 )   COLUMN data_source_meta.source_short_name    COMMENT     ^   COMMENT ON COLUMN public.data_source_meta.source_short_name IS 'Initials of the data source';
          public          doadmin    false    205            *           0    0 (   COLUMN data_source_meta.source_long_name    COMMENT     ^   COMMENT ON COLUMN public.data_source_meta.source_long_name IS 'Full name of the data source';
          public          doadmin    false    205            +           0    0 3   COLUMN data_source_meta.source_description_original    COMMENT     q   COMMENT ON COLUMN public.data_source_meta.source_description_original IS 'Original decsription of the data set';
          public          doadmin    false    205            ,           0    0 *   COLUMN data_source_meta.source_description    COMMENT     c   COMMENT ON COLUMN public.data_source_meta.source_description IS 'Our description of the data set';
          public          doadmin    false    205            -           0    0 (   COLUMN data_source_meta.source_data_type    COMMENT     o   COMMENT ON COLUMN public.data_source_meta.source_data_type IS 'Type/format of data source, eg. Survey, Index';
          public          doadmin    false    205            .           0    0 +   COLUMN data_source_meta.source_flag_opinion    COMMENT     v   COMMENT ON COLUMN public.data_source_meta.source_flag_opinion IS 'Whether or not the data set is primarily opinions';
          public          doadmin    false    205            /           0    0 ,   COLUMN data_source_meta.source_flag_behavior    COMMENT     �   COMMENT ON COLUMN public.data_source_meta.source_flag_behavior IS 'Whether or not the data set is behavioral eg. Fruit consumption';
          public          doadmin    false    205            0           0    0 $   COLUMN data_source_meta.source_topic    COMMENT     [   COMMENT ON COLUMN public.data_source_meta.source_topic IS 'General topic of the data set';
          public          doadmin    false    205            1           0    0 )   COLUMN data_source_meta.source_population    COMMENT     o   COMMENT ON COLUMN public.data_source_meta.source_population IS 'Specific population measured by the data set';
          public          doadmin    false    205            2           0    0 (   COLUMN data_source_meta.source_variables    COMMENT     U   COMMENT ON COLUMN public.data_source_meta.source_variables IS 'Number of variables';
          public          doadmin    false    205            3           0    0 '   COLUMN data_source_meta.source_url_orig    COMMENT     \   COMMENT ON COLUMN public.data_source_meta.source_url_orig IS 'Original URL of data source';
          public          doadmin    false    205            4           0    0 +   COLUMN data_source_meta.source_url_internal    COMMENT     e   COMMENT ON COLUMN public.data_source_meta.source_url_internal IS 'URL of data source in our system';
          public          doadmin    false    205            5           0    0 (   COLUMN data_source_meta.source_geo_short    COMMENT     W   COMMENT ON COLUMN public.data_source_meta.source_geo_short IS 'Initials of geography';
          public          doadmin    false    205            6           0    0 "   COLUMN data_source_meta.source_geo    COMMENT     T   COMMENT ON COLUMN public.data_source_meta.source_geo IS 'Geography of Data source';
          public          doadmin    false    205            7           0    0 )   COLUMN data_source_meta.source_geo_detail    COMMENT     _   COMMENT ON COLUMN public.data_source_meta.source_geo_detail IS 'Extra detail about geography';
          public          doadmin    false    205            8           0    0 *   COLUMN data_source_meta.source_time_period    COMMENT     a   COMMENT ON COLUMN public.data_source_meta.source_time_period IS 'Time period of data collected';
          public          doadmin    false    205            9           0    0 *   COLUMN data_source_meta.source_periodicity    COMMENT     c   COMMENT ON COLUMN public.data_source_meta.source_periodicity IS 'How often is the data collected';
          public          doadmin    false    205            :           0    0 ,   COLUMN data_source_meta.source_sequence_home    COMMENT     \   COMMENT ON COLUMN public.data_source_meta.source_sequence_home IS 'Order in which to show';
          public          doadmin    false    205            ;           0    0 '   COLUMN data_source_meta.source_sequence    COMMENT     Z   COMMENT ON COLUMN public.data_source_meta.source_sequence IS 'Order for the data source';
          public          doadmin    false    205            <           0    0 /   COLUMN data_source_meta.source_sample_size_cols    COMMENT     s   COMMENT ON COLUMN public.data_source_meta.source_sample_size_cols IS 'Number of columns in the original data set';
          public          doadmin    false    205            =           0    0 /   COLUMN data_source_meta.source_sample_size_rows    COMMENT     g   COMMENT ON COLUMN public.data_source_meta.source_sample_size_rows IS 'Number of rows in the data set';
          public          doadmin    false    205            >           0    0 +   COLUMN data_source_meta.source_wikipedia_id    COMMENT     `   COMMENT ON COLUMN public.data_source_meta.source_wikipedia_id IS 'Unique ID for Wikipedia URL';
          public          doadmin    false    205            ?           0    0 *   COLUMN data_source_meta.source_wikidata_id    COMMENT     Z   COMMENT ON COLUMN public.data_source_meta.source_wikidata_id IS 'Unique ID for Wikidata';
          public          doadmin    false    205            @           0    0 &   COLUMN data_source_meta.source_twitter    COMMENT     S   COMMENT ON COLUMN public.data_source_meta.source_twitter IS 'Twitter ID (if any)';
          public          doadmin    false    205            �            1259    16864    demo_definition_meta    TABLE     X   CREATE TABLE public.demo_definition_meta (
    id text NOT NULL,
    definition text
);
 (   DROP TABLE public.demo_definition_meta;
       public         heap    doadmin    false            A           0    0    TABLE demo_definition_meta    COMMENT     �   COMMENT ON TABLE public.demo_definition_meta IS 'Further definition of demographics, for example: Hofstede Index - and a full explanation of what the Hofstede index is. ';
          public          doadmin    false    209            B           0    0 &   COLUMN demo_definition_meta.definition    COMMENT     Z   COMMENT ON COLUMN public.demo_definition_meta.definition IS 'Definition of demographics';
          public          doadmin    false    209            �            1259    16961    demographic_meta    TABLE       CREATE TABLE public.demographic_meta (
    id text NOT NULL,
    demo_id text,
    demo_title text,
    levels_id text,
    levels_title text,
    color text,
    line_symbol text,
    timetrend_show text,
    splitbar_show text,
    "Original_scale" text
);
 $   DROP TABLE public.demographic_meta;
       public         heap    doadmin    false            �            1259    16842    section_meta    TABLE     �  CREATE TABLE public.section_meta (
    id text NOT NULL,
    component_id text,
    dataset text,
    section_position integer,
    section_enable boolean,
    section_type text,
    section_title text,
    section_introtext text,
    section_introtext_seemore text,
    section_enable_technicalnote boolean,
    section_subsection_json jsonb,
    section_technicalnote text,
    section_footnote text,
    section_topmenu_alias text,
    section_icon text
);
     DROP TABLE public.section_meta;
       public         heap    doadmin    false            C           0    0    TABLE section_meta    COMMENT     b   COMMENT ON TABLE public.section_meta IS 'Fields used to populate a report at a "section" level.';
          public          doadmin    false    207            D           0    0     COLUMN section_meta.component_id    COMMENT     m   COMMENT ON COLUMN public.section_meta.component_id IS 'Idenitifier of which graph is shown in each section';
          public          doadmin    false    207            E           0    0    COLUMN section_meta.dataset    COMMENT     Z   COMMENT ON COLUMN public.section_meta.dataset IS 'Which data set the section belongs to';
          public          doadmin    false    207            F           0    0 $   COLUMN section_meta.section_position    COMMENT     f   COMMENT ON COLUMN public.section_meta.section_position IS 'Defines the order of section in a report';
          public          doadmin    false    207            G           0    0 "   COLUMN section_meta.section_enable    COMMENT     \   COMMENT ON COLUMN public.section_meta.section_enable IS 'Whether or not to show a section';
          public          doadmin    false    207            H           0    0     COLUMN section_meta.section_type    COMMENT     y   COMMENT ON COLUMN public.section_meta.section_type IS 'What kind of section this is - might be similar to component ID';
          public          doadmin    false    207            I           0    0 !   COLUMN section_meta.section_title    COMMENT     d   COMMENT ON COLUMN public.section_meta.section_title IS 'Display title of section within the repot';
          public          doadmin    false    207            J           0    0 %   COLUMN section_meta.section_introtext    COMMENT     �   COMMENT ON COLUMN public.section_meta.section_introtext IS 'Paragraph shown directly after the section title, before the graph';
          public          doadmin    false    207            K           0    0 -   COLUMN section_meta.section_introtext_seemore    COMMENT     �   COMMENT ON COLUMN public.section_meta.section_introtext_seemore IS 'Extra text to be shown via a see-more button under teh introtext';
          public          doadmin    false    207            L           0    0 0   COLUMN section_meta.section_enable_technicalnote    COMMENT     s   COMMENT ON COLUMN public.section_meta.section_enable_technicalnote IS 'Whether or not to show the technical note';
          public          doadmin    false    207            M           0    0 )   COLUMN section_meta.section_technicalnote    COMMENT     y   COMMENT ON COLUMN public.section_meta.section_technicalnote IS 'Tecnhical notes (if any) to be shown in a tab or modal';
          public          doadmin    false    207            N           0    0 $   COLUMN section_meta.section_footnote    COMMENT     n   COMMENT ON COLUMN public.section_meta.section_footnote IS 'Text to be appended at the bottom of the section';
          public          doadmin    false    207            O           0    0 )   COLUMN section_meta.section_topmenu_alias    COMMENT     �   COMMENT ON COLUMN public.section_meta.section_topmenu_alias IS 'Alternative name to be shown at the top level header menu navigation bar';
          public          doadmin    false    207            P           0    0     COLUMN section_meta.section_icon    COMMENT     Z   COMMENT ON COLUMN public.section_meta.section_icon IS 'Icon for the navigation bar menu';
          public          doadmin    false    207            �            1259    16953    test    TABLE     �   CREATE TABLE public.test (
    var_id text,
    var_name text,
    var_source text,
    title_card text,
    title_page text,
    data_cat text,
    data_subcat text,
    topic_id1 text,
    topic_id2 text,
    topic_id3 text
);
    DROP TABLE public.test;
       public         heap    doadmin    false            �            1259    16834    topics_meta    TABLE     3  CREATE TABLE public.topics_meta (
    id text NOT NULL,
    topic_title text,
    topic_description text,
    topic_area_id1 text,
    topic_area_id2 text,
    topic_area_id3 text,
    topic_sequence_home numeric,
    topic_sequence numeric,
    topic_keywords_altwords text,
    topic_banner_image text
);
    DROP TABLE public.topics_meta;
       public         heap    doadmin    false            Q           0    0    TABLE topics_meta    COMMENT     G   COMMENT ON TABLE public.topics_meta IS 'Comprehensive list of topics';
          public          doadmin    false    206            R           0    0    COLUMN topics_meta.topic_title    COMMENT     �   COMMENT ON COLUMN public.topics_meta.topic_title IS 'Title ofthe topic, displays on topics listing card and individual topics page';
          public          doadmin    false    206            S           0    0 $   COLUMN topics_meta.topic_description    COMMENT     \   COMMENT ON COLUMN public.topics_meta.topic_description IS 'Brief description of the topic';
          public          doadmin    false    206            T           0    0 !   COLUMN topics_meta.topic_area_id1    COMMENT     F   COMMENT ON COLUMN public.topics_meta.topic_area_id1 IS 'Parent area';
          public          doadmin    false    206            U           0    0 !   COLUMN topics_meta.topic_area_id2    COMMENT     X   COMMENT ON COLUMN public.topics_meta.topic_area_id2 IS 'Second parent area (optional)';
          public          doadmin    false    206            V           0    0 !   COLUMN topics_meta.topic_area_id3    COMMENT     V   COMMENT ON COLUMN public.topics_meta.topic_area_id3 IS 'This parent area (optional)';
          public          doadmin    false    206            W           0    0 &   COLUMN topics_meta.topic_sequence_home    COMMENT     q   COMMENT ON COLUMN public.topics_meta.topic_sequence_home IS 'Order in which the topics appear on the home page';
          public          doadmin    false    206            X           0    0 !   COLUMN topics_meta.topic_sequence    COMMENT     q   COMMENT ON COLUMN public.topics_meta.topic_sequence IS 'Order in which topics appear on the topic listing apge';
          public          doadmin    false    206            Y           0    0 *   COLUMN topics_meta.topic_keywords_altwords    COMMENT     k   COMMENT ON COLUMN public.topics_meta.topic_keywords_altwords IS 'Alternative words (for search purposes)';
          public          doadmin    false    206                      0    16586    brfss 
   TABLE DATA           N  COPY data_meta.brfss (var_id, var_name, var_source, title_short, title_card, title_page0, data_cat, data_subcat, area_id1, topic_id1, area_id2, topic_id2, area_id3, topic_id3, tags, flag_opinion, flag_behavior, flag_outcome, flag_measure, public_view, sequence_report_indata, var_original, title_page, subtitle_page, question_text, indicator_text, detail_extra, scale_original, scale_transformation, outcome_analyzed, units, n_observations, title_pre, title_barchart, ylabel_barchart, title_splitbar, xlabel_splitbar, title_interaction1, ylabel_interaction, title_interaction2) FROM stdin;
 	   data_meta          doadmin    false    202   ֱ                 0    16512    ess 
   TABLE DATA           D  COPY data_meta.ess (var_id, var_name, var_source, title_short, title_card, title_page, data_cat, data_subcat, area_id1, topic_id1, area_id2, topic_id2, area_id3, topic_id3, tags, flag_opinion, flag_behavior, flag_outcome, flag_index, public_view, sequence_report_indata, var_original, title_page0, subtitle_page, question_text, indicator_text, detail_extra, scale_original, scale_transformation, outcome_analyzed, units, n_observations, title_pre, title_map, title_correlation, ylabel_correlation, title_splitbar, ylabel_splitbar, title_regression, ylabel_regression) FROM stdin;
 	   data_meta          doadmin    false    201   �                 0    16654 	   frequency 
   TABLE DATA           o   COPY data_meta.frequency (variable_name, level_name, level_color, level_order, source_id, pct, id) FROM stdin;
 	   data_meta          doadmin    false    203   ��                 0    16818 	   area_meta 
   TABLE DATA           E   COPY public.area_meta (id, area_title, area_description) FROM stdin;
    public          doadmin    false    204   R                0    16981    brfss 
   TABLE DATA           :  COPY public.brfss (id, var_name, var_source, title_card, title_page0, data_cat, data_subcat, area_id1, topic_id1, area_id2, topic_id2, area_id3, topic_id3, tags, flag_opinion, flag_behavior, flag_outcome, flag_measure, public_view, sequence_report_indata, var_original, title_page, subtitle_page, question_text, indicator_text, detail_extra, scale_original, scale_transformation, outcome_analyzed, units, n_observations, title_pre, title_barchart, ylabel_barchart, title_splitbar, xlabel_splitbar, title_interaction1, ylabel_interaction, title_interaction2) FROM stdin;
    public          doadmin    false    213   �      	          0    16850 	   core_meta 
   TABLE DATA             COPY public.core_meta (id, var_name, var_source, title_card, title_page, data_cat, data_subcat, topic_id1, topic_id2, topic_id3, flag_opinion, flag_behavior, flag_outcome, flag_measure, public_view, sequence_report_indata, sequence_report_intopic) FROM stdin;
    public          doadmin    false    208   �%                0    17002    core_meta_test 
   TABLE DATA           �   COPY public.core_meta_test (id, var_name, var_source, title_card, title_page, data_cat, data_subcat, topic_id1, topic_id2, topic_id3) FROM stdin;
    public          doadmin    false    214   �7                0    16826    data_source_meta 
   TABLE DATA           *  COPY public.data_source_meta (id, source_short_name, source_long_name, source_description_original, source_description, source_data_type, source_flag_opinion, source_flag_behavior, source_topic, source_population, source_variables, source_url_orig, source_url_internal, source_geo_short, source_geo, source_geo_detail, source_time_period, source_periodicity, source_sequence_home, source_sequence, source_sample_size_cols, source_sample_size_rows, source_wikipedia_id, source_wikidata_id, source_twitter, source_re3data, source_banner_image) FROM stdin;
    public          doadmin    false    205   �J      
          0    16864    demo_definition_meta 
   TABLE DATA           >   COPY public.demo_definition_meta (id, definition) FROM stdin;
    public          doadmin    false    209   �Y                0    16961    demographic_meta 
   TABLE DATA           �   COPY public.demographic_meta (id, demo_id, demo_title, levels_id, levels_title, color, line_symbol, timetrend_show, splitbar_show, "Original_scale") FROM stdin;
    public          doadmin    false    211   �Y                0    16975    ess 
   TABLE DATA           0  COPY public.ess (id, var_name, var_source, title_card, title_page, data_cat, data_subcat, area_id1, topic_id1, area_id2, topic_id2, area_id3, topic_id3, tags, flag_opinion, flag_behavior, flag_outcome, flag_index, public_view, sequence_report_indata, var_original, title_page0, subtitle_page, question_text, indicator_text, detail_extra, scale_original, scale_transformation, outcome_analyzed, units, n_observations, title_pre, title_map, title_correlation, ylabel_correlation, title_splitbar, ylabel_splitbar, title_regression, ylabel_regression) FROM stdin;
    public          doadmin    false    212   �Y                0    16842    section_meta 
   TABLE DATA           3  COPY public.section_meta (id, component_id, dataset, section_position, section_enable, section_type, section_title, section_introtext, section_introtext_seemore, section_enable_technicalnote, section_subsection_json, section_technicalnote, section_footnote, section_topmenu_alias, section_icon) FROM stdin;
    public          doadmin    false    207   �x                0    16953    test 
   TABLE DATA           �   COPY public.test (var_id, var_name, var_source, title_card, title_page, data_cat, data_subcat, topic_id1, topic_id2, topic_id3) FROM stdin;
    public          doadmin    false    210   �~                0    16834    topics_meta 
   TABLE DATA           �   COPY public.topics_meta (id, topic_title, topic_description, topic_area_id1, topic_area_id2, topic_area_id3, topic_sequence_home, topic_sequence, topic_keywords_altwords, topic_banner_image) FROM stdin;
    public          doadmin    false    206   Α      X           2606    16410    brfss brfss_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY data_meta.brfss
    ADD CONSTRAINT brfss_pkey PRIMARY KEY (var_id);
 =   ALTER TABLE ONLY data_meta.brfss DROP CONSTRAINT brfss_pkey;
    	   data_meta            doadmin    false    202            V           2606    16411    ess ess_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_pkey PRIMARY KEY (var_id);
 9   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_pkey;
    	   data_meta            doadmin    false    201            Z           2606    16412    area_meta area_meta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.area_meta
    ADD CONSTRAINT area_meta_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.area_meta DROP CONSTRAINT area_meta_pkey;
       public            doadmin    false    204            l           2606    16413    brfss brfss_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.brfss
    ADD CONSTRAINT brfss_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.brfss DROP CONSTRAINT brfss_pkey;
       public            doadmin    false    213            n           2606    16414    brfss brfss_var_id_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.brfss
    ADD CONSTRAINT brfss_var_id_key UNIQUE (id);
 @   ALTER TABLE ONLY public.brfss DROP CONSTRAINT brfss_var_id_key;
       public            doadmin    false    213            b           2606    16415    core_meta core_meta_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_meta
    ADD CONSTRAINT core_meta_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_meta DROP CONSTRAINT core_meta_pkey;
       public            doadmin    false    208            p           2606    16416 "   core_meta_test core_meta_test_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.core_meta_test
    ADD CONSTRAINT core_meta_test_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_meta_test DROP CONSTRAINT core_meta_test_pkey;
       public            doadmin    false    214            \           2606    16417 &   data_source_meta data_source_meta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.data_source_meta
    ADD CONSTRAINT data_source_meta_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.data_source_meta DROP CONSTRAINT data_source_meta_pkey;
       public            doadmin    false    205            d           2606    16418 .   demo_definition_meta demo_definition_meta_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.demo_definition_meta
    ADD CONSTRAINT demo_definition_meta_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.demo_definition_meta DROP CONSTRAINT demo_definition_meta_pkey;
       public            doadmin    false    209            f           2606    16419 &   demographic_meta demographic_meta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.demographic_meta
    ADD CONSTRAINT demographic_meta_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.demographic_meta DROP CONSTRAINT demographic_meta_pkey;
       public            doadmin    false    211            h           2606    16420    ess ess_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.ess
    ADD CONSTRAINT ess_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.ess DROP CONSTRAINT ess_pkey;
       public            doadmin    false    212            j           2606    16421    ess ess_var_id_key 
   CONSTRAINT     K   ALTER TABLE ONLY public.ess
    ADD CONSTRAINT ess_var_id_key UNIQUE (id);
 <   ALTER TABLE ONLY public.ess DROP CONSTRAINT ess_var_id_key;
       public            doadmin    false    212            `           2606    16422    section_meta section_meta_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.section_meta
    ADD CONSTRAINT section_meta_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.section_meta DROP CONSTRAINT section_meta_pkey;
       public            doadmin    false    207            ^           2606    16423    topics_meta topics_meta_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.topics_meta
    ADD CONSTRAINT topics_meta_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.topics_meta DROP CONSTRAINT topics_meta_pkey;
       public            doadmin    false    206            q           2606    16424    ess ess_area_id1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_area_id1_fkey FOREIGN KEY (area_id1) REFERENCES public.area_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 B   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_area_id1_fkey;
    	   data_meta          doadmin    false    204    201    3930            r           2606    16429    ess ess_area_id2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_area_id2_fkey FOREIGN KEY (area_id2) REFERENCES public.area_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 B   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_area_id2_fkey;
    	   data_meta          doadmin    false    204    3930    201            s           2606    16434    ess ess_area_id3_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_area_id3_fkey FOREIGN KEY (area_id3) REFERENCES public.area_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 B   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_area_id3_fkey;
    	   data_meta          doadmin    false    201    204    3930            t           2606    16439    ess ess_topic_id1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_topic_id1_fkey FOREIGN KEY (topic_id1) REFERENCES public.topics_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_topic_id1_fkey;
    	   data_meta          doadmin    false    206    201    3934            u           2606    16444    ess ess_topic_id2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_topic_id2_fkey FOREIGN KEY (topic_id2) REFERENCES public.topics_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_topic_id2_fkey;
    	   data_meta          doadmin    false    206    201    3934            v           2606    16449    ess ess_topic_id3_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY data_meta.ess
    ADD CONSTRAINT ess_topic_id3_fkey FOREIGN KEY (topic_id3) REFERENCES public.topics_meta(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY data_meta.ess DROP CONSTRAINT ess_topic_id3_fkey;
    	   data_meta          doadmin    false    201    206    3934            {           2606    16454 "   core_meta core_meta_topic_id1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_meta
    ADD CONSTRAINT core_meta_topic_id1_fkey FOREIGN KEY (topic_id1) REFERENCES public.topics_meta(id);
 L   ALTER TABLE ONLY public.core_meta DROP CONSTRAINT core_meta_topic_id1_fkey;
       public          doadmin    false    3934    208    206            |           2606    16459 "   core_meta core_meta_topic_id2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_meta
    ADD CONSTRAINT core_meta_topic_id2_fkey FOREIGN KEY (topic_id2) REFERENCES public.topics_meta(id);
 L   ALTER TABLE ONLY public.core_meta DROP CONSTRAINT core_meta_topic_id2_fkey;
       public          doadmin    false    3934    206    208            }           2606    16464 "   core_meta core_meta_topic_id3_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_meta
    ADD CONSTRAINT core_meta_topic_id3_fkey FOREIGN KEY (topic_id3) REFERENCES public.topics_meta(id);
 L   ALTER TABLE ONLY public.core_meta DROP CONSTRAINT core_meta_topic_id3_fkey;
       public          doadmin    false    206    208    3934            ~           2606    16469 #   core_meta core_meta_var_source_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_meta
    ADD CONSTRAINT core_meta_var_source_fkey FOREIGN KEY (var_source) REFERENCES public.data_source_meta(id);
 M   ALTER TABLE ONLY public.core_meta DROP CONSTRAINT core_meta_var_source_fkey;
       public          doadmin    false    205    3932    208            z           2606    16474 &   section_meta section_meta_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.section_meta
    ADD CONSTRAINT section_meta_dataset_fkey FOREIGN KEY (dataset) REFERENCES public.data_source_meta(id);
 P   ALTER TABLE ONLY public.section_meta DROP CONSTRAINT section_meta_dataset_fkey;
       public          doadmin    false    3932    205    207            w           2606    16479 +   topics_meta topics_meta_topic_area_id1_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics_meta
    ADD CONSTRAINT topics_meta_topic_area_id1_fkey FOREIGN KEY (topic_area_id1) REFERENCES public.area_meta(id);
 U   ALTER TABLE ONLY public.topics_meta DROP CONSTRAINT topics_meta_topic_area_id1_fkey;
       public          doadmin    false    3930    204    206            x           2606    16484 +   topics_meta topics_meta_topic_area_id2_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics_meta
    ADD CONSTRAINT topics_meta_topic_area_id2_fkey FOREIGN KEY (topic_area_id2) REFERENCES public.area_meta(id);
 U   ALTER TABLE ONLY public.topics_meta DROP CONSTRAINT topics_meta_topic_area_id2_fkey;
       public          doadmin    false    3930    206    204            y           2606    16489 +   topics_meta topics_meta_topic_area_id3_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics_meta
    ADD CONSTRAINT topics_meta_topic_area_id3_fkey FOREIGN KEY (topic_area_id3) REFERENCES public.area_meta(id);
 U   ALTER TABLE ONLY public.topics_meta DROP CONSTRAINT topics_meta_topic_area_id3_fkey;
       public          doadmin    false    3930    206    204                  x��]�r�F�}���v�TL��W��]�CeK1����l�'h��&�Фz���2�����)���̺�p)\�i�>l�!���2U'���p�l�Y�~J�w�H�i�&���f<�$��y�q/�����]Eq
�w�o��r��Q����5{G>p�Qꬉ�x��R�\QşX
������ߡ�v���Icnx��(sW����0K��:f ����3��C v�`�=s�0�m�x���wC絛B�{Y�X�KR>`q��l͓���CB�>��;��݌Ȉޓ-�dC*����n�fq����̀���.%��`�ě���k,��|]
����>�z��!>Ó�%����|ZW�X���M�{��țx�]�˜g�L���q�F���Ra-b�D����z�o.�7���D�&(A�)��_�ª
\�M�J�
�B���P�W��d^��&D�ApZ���műK����Q�8��Jp^�5{A�E+�e��A�~=�-�kP=�bNo�dV,�&D�D���(C��Yc��u�m5��?�]Ɩ|�#L��p��]D+̼�����`=`ӫ���8�y�4L�� ��(��5.���藟����(~`�c�⌡%vy��/wP�V�M���p\��Z�7�p�Zu�tUeu:/��������@�6H��K����7׿{^�k��R꓆"��C�G�M��i(!���=E��3Y(,^�Y��2�5���@�|D�Հ�<{vsv}6`|�]�Sp&T�r�f�o�K�wg2��@�����y�3P�\+��(��  2�>ɢ4|�Bw:�I��䣝Ӟ�-�}/Y����hb�N��Ks���hD�q"�_0C�8������|:*�mQbC_��۲��?_� ��+���̻3�^��]�z�e�w���/j�)O�� Z&�#:���F @��$�\�N6��s R�P���Ϟ
�Ec�0���!ǤZ�'��z����h^�h�G��n͹��Ze[����L\�$	��.b�CētlKN�`O�X�kD`K��
�đ)��]�l�l�������
�
�Cm`�!6H�q�HH9��s�x!�!:�������J!�6+��b�L��ƺ�p%��F��#��2eB��X{6�u"ia��X��Ʈ[�H�X�וR m\��RZ�Q��%�',��͑�3"]eI��pL�R�c�v���"�p_L�G�v����v0�*�`�t��Nu���Ubu��]x76|�$I'�p��a�9-Qk�b�6uZ�Y�w*�z�h��X�z�N��ZQG*���5��=���)�/?�{�l�݈�?�X�)x��p-�X~����0��l�)c�*bXD�X�����˙�+c)�<��u�������گ���NP����@s�}Ewk4lJ�#�gC򸊭�˛(�%.H3Z�-�`X��*�@�>Ӑb�$���}�y<M�CW�*����\�05�kߠ��P�&G����(@/��8�*��c���[7��6t���;;����Z�
�D�^�x�� �����7���} E{K�G��(��&z�����l8쀬��T��5��{��(��kP���8�W3I��b��)�PѾ&v���` �_vH~To�p�l�Y�q�rثA��Uʹ�Ӛ�U0�Ǯo�=w�R^����d4c�3ں�v4f�8�֩���(��&p��b��֩ŌE�z�;���|v1:��[��)cG�i�ǁ��X��O����7��"Qz�z�:�u����5$C3)zP�R��\�Ç �����,J�t�H3p��k���w1���W����p�̥�Y�6��m*r��#cT&�"a2d��O�k�|�!+����F�^*�R�*4+�`� �Ǩy�nӪ�=׏d��}b�v��������ٻ8���Y�2��%˗2�K�T�q�~�b�sq�^����Ce2Տ����h2.!�X�v,��X�iFJ��/q/X���=�I�~��������p*��$�b�A$3�R�ѷ�Y��Y��_�F���uV'��(N2ȰK�,!?��K֡0HX�h
�V�#��*K���<�^&���ݭX����}�����d��#�� Z�X��9��ӑ���|6�V��>���[�[�o���M��F������R�/wI�Q���L~�c��AW�l�������S�=���M�E�#:�R'v��!Fi:�a�{<�ᾪ��H��W��1�b���	�|��+{UkӰ�GLă��,���/.fS+�,��W��s����C�	�Y�]���g(� ��1�tL�~ս���z��${Ճ%��T�k��,^(�`��f��~�����͞����A���ʁ���AF(VE�v��üJ�GÕ��<��(�+�Ä�/��:��M����!�h0V,GVf��D� s��6po�1.�_7�H��nx�6.Ae�>���_c�ڔYt��<$'��G�|�\��S �P��̢�~�����Щ��:b����{z�M�!�n������<�r?W�� ��hkC~�$�#���]��cx:XJ����,���G_b/� �e��%�ͨh^C_� +���R��t�1BC �o�z��k5�C�y^��s�h�9]t��-+%j��ǣ����J}0�UR�G�3��'{]�U���u�i�qq�Ht��8������%C4�=����&I|�a��苵���>����i�͝��f'��tOs|�Tpm�f'��������	�ɤ�{������nlD���� ������ѿ�#{��)yE��fR�\}]1�}��$��*w�n���bD����|�7���N�Ky��҆u�;��IJ|��jJ���R�H�+�_�I���p9 ?o��迄��,���QB6�,}Qod=�F~+��?�{s?�A��?Ѳ��x���Q�=�w�բ�^ �Co?��B���4�#e�=[��W9m^E�7�� a`�3��Q�`�c�\���6�Z�p��b4=/�Tvw)2r������oP�z���Q�I��p�/q^�?�D|j����6K��-/��b�T�;1�R|I��EK��K� ���ebX�1\�)1���K�Oճ��p�:T���V���� Mw<��-Q%�ob� 9MV��N	剴v��)�.C���r�ݴۀ-���8��|��
q�j'\@c4���&M�A�� � �).w��8�q+	���[˖p�Ӄ0��>��
��v	)�\�ߒb��{ �ӧ_�`s�[��Z�u]�G��9�&��s���hx����b���`���l��Nk�J�|u�ewW��I0��N))5nZl1��<�[��DٺŜ�5]���Or��1(o�p���H�y��Oݽ� �*�8�r���Ҍm�d�G\���?��~Q0Y�Yoj�"iE�F�������W�h���+�y�W�em�\>������X��s��@���q�DX��=o)�2IŰ������Hy� +�	����eqɓ���$��5L�%��|T�5�`&ms�Cb���oSb�h��w�kNpL�s+���!��r��G�����OŒ�x�����OvTT�����q>�:���� H��\��.�c�]��BSJcMLPp��N�_��"�o�S"F
���
�ǔ�
��֓A��c�6eTv5��	���'�Q��4,n#���U��6D��l���Q�i떌�����?��A�����`Cd�?�`��&=c��h�< �X�K"��.f�/E��d���r<�'NSY7&6m�4�5���_������3^��oP����o�Ⱦj�&I.��I��!�!��f�M���@����� ��ތT���]�l��&��ơ{��Oi���7��8�v�E��[�K�>�] �x#���d@�BE�n�d>��yM������;���n�k����l╁����EB[=�~K̉�)٥�Te���f����PK�HeP`Qm��)�\�����Z9�6���F���bx9q^�)��oĂ�����@�ʱ�F��l�k���q��p��c��Ǡ�� #  �|˳Lnu~E;�� ������7��.
�C��h^
[��k�����*�p���M�w=���쁇�'�;�7��#F�����h�8Kl*��' �m��ETB�,�bT�a��v-��@V��x6�sG��zh���`���+�Й�f�V�o�m)`0(����Y�યݸۺxB�Ee��+����7]m�վ���I���vj�UV[�vk��N�6&���M��h�5l,��ܸÈ$E�
�6iE��Ȥ:}��k.�T0���oS�S�6��-5 /�[��idS�%(��o�nϞ���ֶ����|:�;MoטXF��2$�6`�"��.l��8k�����nh��R�}�����|�r�M���`z�#�:�"�{��h���$�W���'
^p\���]a��׼�t�/,�S�<�����5�+�\
�M0n�BK�,J�}�M�rA�e*��L����|䴖p;GC�Ԛ���VOKj�v�L)��6�M������"=��I���"i���t�Ӛ�mo���#mi�E��BgI�j���n
0\s�ꥴ@��AߩSV���ꬴ��NF���3<)G����91�� ��3s�^,�b�|@1�f�0
�<���sxQ�Ȉ�"��#Ii��;��1�gׂIj>p��vÊ�����m���46_�0��Wnkq��ʗ�Qn�db��ΜF��7'd8KBW	�����$x�냝�R�E�|T�q�VY��h��f���fX �6�c��)��f�śT̼�UO�ʳvZd�봽;����b��d|C �/?�m��]y&.[%�nK��y<�	ǽL�l@]q�؉�M�]D'hYSo�r�O��yv��bSI��vmt�^I�H�i�'W/b(EG���ܡ�D#㉷����+5�%�,z{qYj,�m@Sb5�7x��5�-�/J���-M�q�����ׇ���ɟ���\�Lm�HK6��L��b�<�<b�j� �K�0����1�;Z\���v���=�S�k�>����}W�Ғ<�BCZ��䜡�ߣ�:��֙������@E�^�����f��dȒu���|<�t-ɿс��3.0r٭ |u�?��9F,P��C*i!^<JH[P����B�^d�����?�W��lq3�VH�6zA9|����W�����]E��<ة�"�~y5�yN}MPa������(J�z$��!�B.�?1��Eq��l[tU�N�˟؟�a�Lv;���)���ӿ���F�l������_�'.'p^<=E��+����l�X��tB������$��U)Vg���P!���GU/�m��N;�����=L�b���,(�[.^E#�"�/���pȌK[.g������r�3n��������S^mB�􌙝e�B'�]�v�X�ARe�cD�Ϻy�l>���Um�oӖ���<�!~dd�_۴���6)\gf�Ԙ�p��=.�ѿ7C���r y��b�taQ�[!���ly�nV�v�f?�.�C��R��q�o��#&,,��B�؛�cV���_ݫ)���^��B	��B �xO��~ _@���:�3�/��ә��&ѽ���\�7"��"ٵK����G�9d���7��Q��^��N;��Q7Y����Xxo^?o��S}��5�6J;���k2�\���F��0Yrbq~I�Ý/��F�8;o���iV��k(uCuW�!WQ�Ȁ��)tt�V���?&W�A�濧��7�8[�1�2ETs�N4�̆��x��M;��4`����$e��p4"�x,�@����'���Ж~���=�ÒE�퇳\uB���4��h�'�+G'�,�IF��#��Z���҃NS�M��|[ ?�)J`�3fE��3�v6�t�lx>��J�Z!��0pv�"�Ѓ�A����o!^�&��$^�ћ������%o�$W8da8�r�����*���<��Þ^i*y��%�H����k:0̓ ���:�1�!�A��d��5"�N��ѵ��]���(�'���T,'✟b��[�T@N�9�P�߻9�/�ϝJ��	ȯc��EՉ8�s��c����K�2u����!m>1&pA�����W@^.�q/P�M�>F6	l?�4�=hM'E�Q�R�����	�N�II�A�s"�2�����ګla��N�|b9�]>�K��wuE^%5��_�����l�o�����5� 2oҿ%��Э`�OW��L�"�l風y$��=~N"��N��W�A��
�R 
�ZT,[%`�E���U��j�T( ��m�hm�n����8b8QhAb�e����t���2�#�UX�QY�&�@x��'�]���o8�Á��wC���V�@~C��,��/�����S@z�B���CO��9<]�u�a�X'���§��x����աl���-w�Ո�%^�l:�AR;�b�DE,	v�k���KZ�M[o�RW\�^�0����`��IZ�X����4������P+�	�7ڳ���)s7 7Ih���bE� ����>�TVb�؁�s=�Ѹ��Z�A���i"E`i��̪��fV�j�Z�P'����C5�g!Oo|rЂ�F��a��H���#ޟLk��;�M���Z;�j��hw_��Q#�x�@��[��R}� �eq�O�G����9�,v��햢���Ч�Uz�	�e`�g(V�N��������g����b��zYVg�c+ґ����4��f���*#���pGW���v�.b��|�\s:��]^Z�Q����@+H�F���6�xN �L�w�I�� O�<���T!��ᶦ�=}'`�G�2��qc1~�����{#���[<��>9� -��xBxt�X>4����h�fL�\�;�����X��q]���S-��@m����7k��͚�������7�,�B)�����Ԯ�z��b85��U��蹍�{�\!#jQ@�,`�e,a�IjO�!��u�G��[��>�Y��qt5�aa���&��b:`�W���(�W�N��X_D�`�� �9&�5}TQ��U�Z�w��%��,���L;��z�8�$ٷ2�/�L�����%4�|E����[G��[�MM	tN{�
�W��Y�j҄Be�d�%wG�'a���]Ms�l����_�e��E�x�g�W�r�D��K���8G�i�����%�|�I�"��!ύ{�$ϯ�Ðx��9����
��9.7AKM y��ڸW�q?D���¯��kS�m���xХ[���6�^�Կ����x�>���m�b�iE�f���Zp�� �#��t�E���\���a���=Yo���w��7 ��B����+@tS���Y����ӯ�ɛ%K��Ox�/Ҧ�3�2�Shj|���w��ڳ���<��?���ᐚkE�	�Dƒc�	�c�I8W���r��c~%�3��hmDM��2�����*f4�_�}	�3v?O�x�]�����S��3x��3<��[��u񄞯v3�_���#V����Nd#$�%�{�����H�+HZ6C�}C�S��1���(���nP��- ��:1�O��"����AD`(`�h����z!�ˇn%��AY��XX}�s�"�I��w<�0'2��ᘘ
e��I/}Z�6�>���2���3�� ݺ�E.��]]�Dt�$�.}z��$8��|�N�X>k�J��;��N5v�?���si|���#�$��eqyK�I�>#t�6�җ-�]@=�t�4Qo�υwS*߼������^��2���"G�Z�-�(�����^���@��vr�t����Cv��ԉ��:Fz�1�fs����hd5D�X"�x��_���+            x��]�ܶ��<�+X�r&���U^�]�O%�$K)[���U��`Hp�YI���u7  A��SwW~,�D? ���n�4�K��#.Ċ��
�?�]��AW<�<8�u�Iv@�|��OW� oͳ���g�ip�g��U�g�ל��nu[oDŲ�?��ɇB?��3��^=���5:�R�/C�U�a�;v��r�yV�$K����{^����e �K�*�sT��Vo���� e�
��1����
v�$�رhD�SU�/y�U��I���UP�0�8P��I�U�~I�`�u��`}�Pi�l
YHL�0�Ĳ)����<�W"�T�1��`�`s�+����'�y�U�/�"�@U��]ɣ$��h��|�6I�T��wCܾh	>����q�D��D���x�o�T�V���!����#��*��.	w�ZO�EX&l8��|I�U%ˆ�9%�D��_̥ʥ����r0ڵ�[C��e��|h5����6�m�cEq���n�g�<|���i���E^"���0�0�jɏ<M=�ض��dCzm�[�oJbG�3D��K���%{�����$��;H	��-�f-� ~�!��Hx��J�[�ɵj���d-�"d)�
�	򟪒�9Tx���U��F>o�nk��'���a?[�2��D.G�+
�����hlQ�iK �t���'��T;��6@oX�h�/�A�sL��u��i�}��)$9��^$��K�h�3%��ޞ��Hy�������VZ�x�}���}{�hJc֪i4�ږ��Ȑ�;�Ü|H�l�MoZZ��43L��I��xS4n�r^<]}_3rY�c��Y&�{�k���h�א.󡛱s�ud\�"89)p<B��۾�rEu�̬����ކXkI���<�լ��yk���t{���/�S�;��Up-A�c��;ʇ���4���XX5��d�ƒ���oz������y]�ְ��Ǥ4���h[��8�w��50���Ȟ~u�b-H8�f�+B��s<���y���UT�Ԟ29����x/x�+��ύI���UJ���hl̂pmr�`�
��\�����|@3[�yZ�j�� ����-���ێN]�ye�C��Z�慝Ϟ��d�nH6Ӑ����,I��)}���=6����0M���A�c�W>y��D�Սz~#���>)s"^)EQH
����}U�@����˹n��@��,��;@�����J�
.�ad���l� y�-M���A\�XkSdR�e�$0�9�:�l���EG��̗d5hp\u$�H��7*�C�V4엺9F��ES�4e��7�پ����\:f1��&/K�2�6��˱Ugg�e2���ӧ�\?̪]��s}���{�m� d�r �j\)�<DD�L�g5�= �
=�&o����5?���G0����L�t=i:��N��w�)"Aϒ,�+ IJ.g�v��<Y���P|K*�ᥡ�k��Lq\�C�fd��UQ	����N�JY�Z�����x.�{z5S������]��Вi���=�e�[{A�(F
<��,Z��K4!�#Ϣ����F�:Q�|��!��G�M���0@�߃u": ����ӓ����Y)V� ���(GR0@,#��&�B����Cv�c����jJ<�j;��Ǹ����� �Bh�(���y�mRLL�o5�1J7.��?Ccb#ʌgr	B�;��=���H"����ځmR�m{��օ�#�dr�(S���?6E[�L&\q�  9���6YQo�$��N��(��b�{� �m�}E�2�G~ 缌Oʬ>����h���J 4P�m�{�q����t��G���dQ{N�qbFjJ 7�`�m��c@�+�uk�v�a�dh0�ۖ��� ,z�͘���6n���`�v �.���)5����ƹI�5O�'�O������-V�1 �b{՘{��W��ġ���;�@�%�]`[�'-ņ��f¡�\ ��mu�a&��eW*�$2�:r�%�nc_��Qc��� �^�3@\I�=E�HrT�M�G���Hh"P�k�i�L�`�ef��`?��V�\:�{E�q}��������v_$�Ɗ|�t:�!町k��!�0t��#�)���Fd�'5T���/9'�v�`�_IW(xy����DophF��Z�\oƩ�ڄX�/`6J �	v�rlQ�������sE����\3���t��*m籕�ώ�[���Zwa@sy��Ԟ>VrH�X3h��e::g���:NJ��3�Z�����k\�
^��X�:�����=�B�5?,��w�rND�8ǅ 8.���6��Z�����E�7&��_�~9*�a�}{�s*x^�xH����[Kk�<�q�˃�Zvf)'�ϥ��(��>��VW��4� �^6]�`�����Y`�CN�mK����%�<fĲX�&ŞN4�x8�QE]�������K��d�&CՃ���������#)��B-�ȴ�#)J�	��'�:����x?��O|�-�b�]މ`��B��1��a%|�5L=��|�㰨ήe��w-1퍼����+-K��3�����:%�-�B/Xکl8�3b�}�=6�4������g�,���xބUQFg��h�Qz�ümX	�H
yTxv2��4���ٖm9mt� ��C��݌P:iY�L���z���ca�I"����U�Ջ�7W�a�a��ޥ��N�����:���X[�FU���ْ��ϸ�R��?fh�۬��J�2ݜ���)�S��#�� �k�̞�n��w��E�J��T��t�&��F���-ô�O�R�թ.�gOGú�tÙ��6��f\ �g�,m�AJ�L쐗����!%��zBc�1]��w�4�#r`�Y/��0��g�.�Ì�3�I�&�Rj��TU�Ev)6��e�s�g�r�am��>�$0ь�y��5w1��2꿡ny�C�j~�i�
�^�g�n��h�̚����i��?'X�}"���ٺ�R���fO��d�jA�q0E-��޶
���������k�$��V��ش�b�F{y�U&{N/���	��{ڔ�:�Ze8Z���SǰS�a��0A���"t�p��(���I>-�����v1m�m'i7l�:l�T��Ϥ�_���@���Lw��3�7�%Se�0�x����w�yY�Vz�R�{F�n����\'�:]����3΅-�}���h|t��M�����$�}�Ot�v.�B�XJ6�ڧqg���7�t�s�2m�pw�楼���=����=��R�* �@�b�ᱝ����@βDHO�fHD{�t?�t7-�wD���V�nS�T�l�"��,V�N���8�x�7�kgЧH�9��:C��uk�q��@�i��\9��(�c�E��]Y��X�#��1���u�:��(��UZ��vG�����+o��aX��<��1��By�
Xᘒ�4CM�WFI&I帙r�54e{�۽��we��M!�,��
���Pg�x�:�$�^F�މ�e؎)^N������`�[�(,U�J����5��,)�@$�P:��$��mft���������_"1�!�M�Q��������-)���.����@��
ڠS'r�u'xڼ2%7[J�m(+������`(��j #>�����6������Э�6�i-�r��[/)���xx���]P����D
�>F�s�S�\4b�(��28�	�TBUh'0�x��'�vi���������.���45s�*Y�����h18A���7���w�S�_�	N��b�p�"=gX�����ΰ���H�#3;�gp��W�cSEQ7��clUxp�h�����4+����N��ί�;}LZ��*RyG���P��C�ѩ��ռ}��*�j��ۺ�0��$��;�N�2��8����sZ�c�$�P��*��]F:� M���e~����N�W��&�������/���չ;L:��\�ΐ{�ڙ��P]�=�R1�U�oV�LF���C����0�F�Q�j5? �  mR�4�Vé�PzT�{�=5�]s�EcM��M,�2/8s[�P��̬�'�5*�����m�l� '�mP�Ùސ��p���Q�N��N]s���\��i�?`��(x�6E��]�HA�a#�9e���L�+�a������9��b�j��L��n���N��o�je�8�f��x�Q�a;4�9e���^6��P��-mg؟I�k}�<�3Y�'�1����&r��M���e��V�W��`�k��N�t���^�V(�keJ��%)}-K�gS��?�0����������$�x�ೊS�V5�	�Q�ikJG:�k�^}��a[f����l�ô�}Vn�m�U�;P������Haa��w��|��<x��v�?x&蘣Y��Z�� ��Z�n�E�7B�P�_���br���llX�w�R�]9s_M�<?�q�<94M�����2|h:��'~�ɲN����P���2= B����O�@�[�D�!J�y7�}���&�,6��ޢ������{��\�Q�r���cȓ5<7/��)2pS��o�(' �]@�8<�2�7�Dc��@�t������I�#���g>6'���\�7[�q�Z�����>٪�FW�]͡���&q���7mFc�f�k왏��SS�)��o{�/����G����͝�R���#�#M�x6�Z��i�P�^}�nNt%��_H�ߞ�s֫�f��kG�zoh�rj%rמ%��R/��]B�c�����؟\H��r 5�n�J�c�a����>k�Ia�/��L�t�/�q-x  ��fr��o�sS�eJ5�uFX���߶���5��o��J.�D=����@%7��Π���o|��H��7�%5:҇�/$��7=�"3��r
�~�	3��(m�A�B��L��4"f�Ӫ�!���C���~n�),K�i��X�M1(��]Ew�ʹg`5�Ou\��B당��$ג�x��E&��~�t<��b�z�<�sT���f�T�ǔ�6.����C�����q��P92�Eɩ_�9�q�a��"�̤pJg����Î�f�)x�+���]������K�����XQ�x��ҟx"Ix̮�i9�O(4I��;-Թ*rY��\�t4�g��� ��[�<�����a��M�O�+�t��r#c��s�U*[u��#F�z�@����Ьt�MIc���������C��2@��fρJaM���Ӏ�v]�/��x�N\?����i�1��u�A�L~# _��|��)�{'Y�d���fT�?�3p��؇�Ip�1}����X?be�1t*x�P���;�O�u�t �{?y��4�XJ�|�b�D�2$�lA�+�5����04p�!�_��7P����2��C�|�V\�}�TE��i��W49]�,)���2W��t�;.��KZ�=^)z�z�0į]Tr �R���:W��Iy5=���M�4'�/#h�P��ȥ��i��ߣ�[5U��`�$�4/-f>����̧�h+��d�+?��.�I.�z8���4~/���^��~Z���q�R�����rKD���ҨR���[��6��~���\.c�(ZX�禵v2�U+�����>�ֲS+i���~ؔˬKc��*��Iv�8V����-@�X�VǪ,�f�i��T�1���
~DF��k�W0{����v%
N֗�!�r Ҹ��[��V_K�k�OL�%ݗS��fº,e�AvX��cȶ��8�[=�~p�G�9��k��B�6y]�Q�N�	W�Q���0�#(%�=�%����A)����T^;��4��68Ŷ�t7�V[?$�K�cN�D�
����8���/��}�vs�2�O/WI|Dӓ��k����U�H:��~�ƿ���S��e���vF4yWW�lA�ZWN�S�4��
=NV�גɯ=bb���K�K�m���U	�ptЦ�;����Fz�S��7���"��rhT���mhJ}Φ/�3�:�+��޽q�WA7�֍�Lu��)bU;|�����:fDn�&Ÿ�#u�U�;�,�0X,����tJ���<��,��'��&/w��bܝ���]w9T×֥M��ݩ_�0�Z�*�^�ᒩk
�eS�E��s��\��b5a��+zP@.=&}$9:�%������4"��]/�jTy�aDGFfө�Q���n��X~�Hq�&]�L�P�kT��Ư���ʑ�yIq'Ytϲ
���.(��>�	�t��adEk~�����hOJ�W��Ɲ�CyͬN�(�b��R�m.o��;�
\���v�N�~w�շ}����\M����/|N֐�'�a��
̋�1��g�Ʉ!vkF���(�dD�t���/i��ڴI�m��<���^����Fy�hR��b1�=���*i?4�Z���:+�M�Vt�TF�ARe���7��{�L�����GA���Sp��*́����\��p\��\�z	���j�bZ���eMW���j'����L����}G��-@F��M�
��㐗�M��%�J����Ǉ�惀tf�j Hse��:l]p�qF�(������1��ѻ�J��ݺ��A6�su����fZg0<���p4�#���7Jv?�Qq�?$�NT ,���:8�[���g�([���s��t#'��M�a�;��7��}�K�=�� Z="�G���?a��+:;�?i�j'��_{ �k��姪�{��"�	%P��}{�Ui
l����?��6c5��7������J�)��]Z�4�0m�|�yu�*N0�!n��Gu�:�������7���k�Jo'�w?��0)@��z1"I�a��!˦Hg���Pt��#z2+���)��>��f�D7~w��b�YXx���G�hRm6�`}̌"Ï�����tL|��k��C����d���P:�W	����E��э`Y�-�G�Bw�>�9�BY�i�ka���T�&�&	�֧���<�;M5��#�iݼ�+��$JuN7���,��AVh� �K���Q��-.��6few��p���2���i�ai�)9�߇�\��Ҍ�4\�ӇBZ���[���F�]����Y8/qj���8��}�Ғ��h��q@�KV�T}�^ND6�i����L )�Y��cKo�Z���}�U�6���Fs��gx_��t��-nOf�>c���ݎ�UVym�ҝ�%��� ��v�t�"��g�0V9;K�k��C��`���R>��Ԩ7M������_�� �,q�9x]�;�%o@؞��e~���I��^�7��΋)0�J��2�x\�b���g��N�ϊ�2�D��Y���q$p����*�� �t�ݲ#@BR.62�6�"��S�֙�˼�D�`x(Gr�*���4��M���\���\��'���LĎ]�����:�<&�>��4�:��,-9�]���Շd?��B���<�-*��	$�:��l���Ѽ�b�@咬g[H���O�9�I��_�_g���ɺ7Ƚ�#M�G�uPH����2�z��^G��VO���u�N�m�4�We�]-T�G>NR����RG`��>���jm��
�˨V#M��3�n�]s��A���e��5=욼g-�u��(|���4}k�j!v�jU��Ȧ�Թ�t�Uk��	'M�܁U���y������������/��'u�]l{f�F���^�r#�VN�R�9m�r�O�?���4�            x��]]��ƒ}V~�}ا�/}<Nl'���}/.��A�-��THjƳ�~�����:M�8�.f�s��������DԻ�z�}Nvb�_˄���3Q׳h}��%���?���<�Z�::Ph}B��D������f�";���o�s�2���ς�C�Kv��xʢ9\ymG�W��=QOo��븖
��[@���9$����
�W�
��BvgL(�b��BY��-���Z�-!�3(ɯ+�r��X\&��$݋�Ci�c�%S�4�D}mn�`˻HGm�S���V�p�P���]�:ԁۭ\��qv�)ύ���s��/���{H�3��SUn%�f[����Q��~�dOY�b�LDmwW4Y%�v�k����a��$�����,���rȊG�M��Fxo�b����tEV썅��݌���d��ZE
WR�������2f�o�㣸���|�C��m�3�k-R�)�V_j[G5�y�<I>)v�VjZҭ�G�H˔;b'���a��"n�� �(�
�f�\��c��I����MR~���ߊ]Vd�R%����4�n��p{��H�N l)�M�t;S���a�Ag��7�#�&���������u �>7UY�ق�si��mV'm/��^�h�~K�Ad�A*j;ʢ�<��U߇��]����K&��'& �Ą�v�71��TV����Y\�7�����L��
Z� Lmu��a/f݋��@�|-�]�M�L���I���V��R�ޯ��)6k�7I:W$מ胥��Mz�f�y�I���ǲn��~��C(�c�KrZ���""R'p@y�������-f���y#�ˣ�������j}8�x�.�8ض�9��,����ܶ}WRA�y���1Pi�i��kѦ� l]_�,k!w�?��-F M:�b1���m�n+f����w�8Ӟ�eZ4
�δj�4!gZ�D��mi�Y7
дp>�023�/@�k��[)c��(������,�l��z �٭������f�D�3��kR�Oe�/wA�l�3���	Ǚ���q����L�,8Sb%Z�c:X&l�@�C׀XI�#@¥tz��� �"g4`9�p�\$k�L� ʔ�u��)u0F@��y0�-@f⋪@��;@��et?nmU�v�T l�A�8S֭J1sQ+4dV�5��B�9�1%���a.��
���ۀ�H1��M%�� d�"��n�;㑬[�2bg��<$���ث�z�a���Ɣf ��Ę��LL��>���[����`^�z/����6Q��ޫ�M��Ǵs��!�B$ys������(m�>�q�&Ye�-X�oe��A�O�eH��ջ����_N��Qd��^lKpZ^̺g���K��ǌd��ɵ�cf[��! 8Bc 2 ��}�czJ+��R��N�h�n[��T��eH�vj����6o���>Գ��D ��JI��xbć8�9�@@�t9�I7�����2F&��ޜ�6��G��R*�l{��]�@)��k����K�H�;�?o��r�梞p|c���"��2���nw�r�0&�e"���Jm8�b<�_D����<�
�)����)���ɿ˪6j�Ʋ����O$d��k�T�+�L��'YQ7����#����A�*&���ҩl�w��L�E��t	�sa�)�1�Ũ�E�o���ܑ��u�9Ԗ9�}�H��QH}cxk�he��=s�0Z8m��X���P�������i�t\�gES��'U*%�{!�_ԍ0á��:����ǀ|=H���?�� ���"��� ��c=�;
�L;J[�{6��v����%�q��8�/���(��>2�=���v�2F���$�S.�/R\�$n�7�����%y�}��M�W�������	�P5l�HG���$j����ac��H}`@��!���MF��Ɉ�E��|�>��~9�c-�'�:�/k�j�W��"?�ι�9|	��F���l�C�cO��؃p ��`0,F@c ��ei��C���t�$�/�y��m��)ϊ�(fYzo�JDݹ-�^%/����C$�X9]���Y�
�@�� ���>�Q����J
�@iъ�P�TH'�!5�c`��)��Il3y�x_�j�f]�r�f��ov�_���x: ۂ��\xD�U�q�ۯ*1ϽҀ���®:Y�.�v-���� �H��'𶵈�5g<�)I5h!�'M�:m5����m��.�۷]�!���,\���!�}#�J3 �m?`96����!��ڇ:���{S֢}���s�1��/G�^qю�@���]Of��N#(�� ���y+vb^4�(��ȳ}V�ͨǏ�8�yp.�o0�z����;6O4���c�aD��'��f��6��M�J.���w]bSц� l]H���cx�JĐ��7O��Ŧ���j�W�`[�l~�kG�� t��e X+�Q �-A�t���9"��t�$��5�-�����%-�`{�B��Ъ�o_|�{M�hl�PW�#^�aU�q��D�u�Vi�fK�v�
0����Gh��j�.��T��`��� lS���6O��x��	!�]a���-l�Zx󄪻��֒k�²�F�����<��P�Yoa_�����璎\���G�1���ʧ*�����4>��5wp�8�����夋h�	^�;T�հ�c��s��+���VUR
X6CLcx�2��ѽ�L[hv�8��j�Iꑎ��+��%�K�I� ����X��h����*�9��9�/|�B��&�w��Y�?s�%EoQyI�.ƥH�C�:�9 �k �b��[�0`�rq`@��1���h4x�aN�\�z`�Z�	&����X�|z�Q�r,(�~G��H�֘8�v�0&N��Cc��#p=z��Z�p��|�rep���࢕�|����$'�``K�֘ �u	6d`�>d`��T��i:mHU!3�ّ�z����d)<\
�.8~��q�&ˇ@��d@&Yܱ��2 p�1�
�5�v(����2��]���k���Ë�����M/�!o�%]��xe0�������6�;�v���<��5�E�8Sl�sg8��F�Zg������w�:ŀP�\$��(^.��2'�T�t;+v�6UՔUc��[�: ��h*�X�3��cx{�Ç<��2s�u#x�m����bu2 |j
��>���	ڂh"46A����>�7�񔋦����p���)R�A�����H��z6������|q��%�8�# (��3�UOܸ=3,!p\��e^�b]1�r�ج{2@�B��ęB]tB5q�P/Jb�x �mȷ(��w�	�6B��ǅ��4?.����ת�cj8� 3���!�%���yܳ)څe*�dCK�L����ゝ_wʐ5a���*n��ˠ�|��5�K�U�1¬
2�ں��a�*�4O�������6��	����[���U3��-\�� �-C L" زx��O��[��,�-��@�-k�\��F;�=�����	�@��(�B��(&͋�a�5��@�M�
/ ^Np�D�n1R�y*��>u�H�tL㽣:�M������P�;��{�.R&�p=?>�e��I���u�Q.,���m����{�}m�j)�rm�ˁ��F3�Uʨ�tsp�>����r��tܞ��G|NWcil�K�́X�/��G�c�RB��}	Moᗬ؋oi���T�����jG�.g�g��q�W�-Y��ɴ%�;�(ס㞬�XY'K��=�s`_t.b����g�4!þ��@�� ���,����OR�}�6�)����^��L���V�}F��4!��>�D��ұ:��(D�$r�mE�=�(�M��T�	��VJS���HU5[�Ir_�����g����]V��:F�e�(I��,Sa��\�e�Z��k�@o�	Ƣ_��c`�-�t��BD�_4�<������PvC��GO�N����T
�8Ǥ��J���&S��1/Z�X �  �4S�Ps�V4Ɋ4�va���X�k�}-�����'YK��w���Z�������$GF�W!�_����{o�r��+f��������G�^=����+��p�W����_��z��5$�5$x�����h�#pg����G��G�A�A��4�׏�]?�^?w�z�^cA�^Cw	{	/���0�����EA�t�xU]\��|��f�$g�P6d@-�)�2��O�R+��
�2ح�_J���|�8�\����[�?�!��l8�Bv9��VUQM����ӦX����&LЖZ
�[~�U\i)����Cok-��_������e!�i���}z[3��n��ug�����$�O��~�A~���<��������zU�|�$����N��$�ڙ�z���i�����Y��h�v��kH�!A�!����!���k_�"�f�)��P�CY5wp5䔀��O����x���%To	��OeY}{���L���IC�̏�tx強�T��Ξ�=A��!�QF�R��+GQ5�ҬIm�J�����ܨ��4K6�ɶ�,����I������c:��qJ�7�p����ҹ��sı�ϧ�M���z�溴��ց���V؆��bk�L��f�'M.3U��S�?�J��k<�'�����/D����n/�����K[��ͣ#Y�]s1ޠ�7"R��j��~UD� �&�/f�瑯���S�;��N��|�����N�>2��ȁǃH߉ǣH�ŧy<��;�p�pa�@҅IMá�%m�d�7��q�Ɓ�7<��q���î)�}�8�.:0a"ǁS9<��q��t�������tx����u��(�;�H�,V�>?^jJ�|���,j�ݨ��@Y���Q���{�й_�閎\�����Ŏ\��V�\��ܸ����Ɖ�=`�ʆ^Бk�l���#:��\��%}�#�G����t��S:��-]�{LG.���\�9���Ȇԑ��#zRg9Y����u��F^5��/�s�[{�fM�����g"��~ۖ�H�L{"�Q���Qku�a��n������NB]Q�ԏY�-��>꺘t�����WR��D��� ��� 2��/#e4�GX�7z����*��پ�y�p�(V�H�my�O���u�xԃ���C|R5�*k�ھjTk3�A**@���<PZ4i��$QO�P�iK�"�19˽��%}M��p�+h�u�)95bĄ���$����-�(�r[R��� ͉>!�YuS����V�5�b5YB�!{�R��h��d���r�#ő�����TT�O/s�&O�Ź1%da����k�W�/AXL_�rc�7���cZ]no��O�����{@����+���+�oD�Y��F�[4҇�?���7���M�o!��l���ߠ��m�7h#�A�ڸ���7�S�����ܒ�@O��ip=n����4���7���z�@O��ix=o����4����7���z�NO/��m[i��%:����m�͉d7rj]�. �O�����Ya?�wyv����5c�b��#�I�	�1�d�qN��='��0��R:
Qwt�n�2,�9�QN!�-�a�%�Di?�v��PA7N���w?����W�4�         t   x�M�A
�0E��)r�B�BWn�t��i��oP����>��&��7-/�)S�즋�3��f�T�l���Io� �	2��$�A?��R\ϔ��M�������F��{yx��2<.            x��]�r�8�>W?��rLIS�R�c5�_�1-�a�ǳ1=�`��*�Xd-ɒ\{�C�e"f����(~��L�$YRk���+�H$�/��O�^���0�O)����"�z�I�	ڥ��ޥ�֋x�s�,���硷��8�ns?Y�޳U�ġ�^q/�W�Y���YoE��/�0�^�U�I�������ߐ��V�-*9n��;��<ν%qx�6�3v�J��l�y���v�����|�<&�a�4Y�,������ %H�<I�,ަ�$eI��-㷐�'Q�vɖ�+/�R"��d�$]����>KW|���$L�j�Ϣ�f�Q��p�&�-C�{���]Ë��>�x���>�So#j�7:�G���ԗfM�[����{��J�K6��ö,x��t�{9g^���G����g�=�-��e�j���\"T��_�B�N�NݡI��4�)Qpg@��j�K��J�p�D	��G�&��ئ܀Q�*��*\���(I�N�Vqq@u�B���=i�Ngԡd6')�R� RB�,G�]�YƢE�+�n�ҟ�6g���*%q�c�6�%f^�^���l8���O�v�<��X� *�j�y����gϓ�뗿��&N���؛$g�I��_��-Ԥ�H���t2Y�e�5����[�)Ҷ(����&0�K��v�����{
��W��������Q�ak��[�BX�q�ѿLV
K�Y�n��̠�א/�u�g�Nޞ�;y~�g|�Y�20 ,R�.�&{��L�c<�j��JuA���y��nS�� �4�$����.�b����mJ{C��t����݇�/�y$�{�2���T����W�����dX�Q��ЍW�������K4�
qB������%Zπ<��sϿ遴0(�%S�a�H'J��1A�`�	\Iy$��w�� ��a����?y,����,a�E������:�ݣ�pVnh��^��v]�����vBy����H6I�>��`Ƞ"�+�ܞ�0&iO��ko��]o�D�oh��r ��U�U�h��*��� ���� 2/M�1"�\�}�b��W�6y�����!�h�j
W"OZ�hxzz>��^�Jh����cjqH/j��D�{�x��lP�����U1���D�_���.
�ا�M�e��*kDej�&TT���L0Y�*���d2��׮���솯Щ���}�vl�f�q�B�F�M��nF�U��&�P��;��T����5g���(�)�i>u�jE[Yfݎ�edP�߳??ݱ�_��_����q��^L�H����,��|܀�������#N�����K1�DL
����}\����^9˨�9LX�_�5_[�R���h6��t� @�ނg��se]E��\�tGf�N�avv��l�z ��9J�bZ�n�N��8�`")Ƃ���x��K��YV��x�V���,��D񰩼���Moir��:��އ��m���2=Te�q1s��D^��l��&{u�Vl.-QH���+W<��z�3�u��<�}�{�[	�G��Z`&zI��Ӟ�t0�5_�=�?5ֽ.�/���FNӂZ��'YnX�I*��3Ha��d�C@.˾�5�5P��e�̌�G.�w`H�8�st�O����8�͹�m3ʋ�A���<��J8���:��U����=�t��
\���!Veuj9c��^|��t6�����{M�)cK�i��j��8M'H����5��2Q���t߰�@�.Q�rh,�0���av�+�%[�W��v��(P`wY��t�Q�y��7����q5ˣ�y��5v� i����# ,L"2B�x�oU#v�4R%���[+��D����������C��6Y]2����I����l�s��.5i7��7I���s���sV�ʗ�������%���J �:���Jejm��g��xTAT�	�vW�받Ҍ���8M�����}L�4��2�S���^?9oH��]+�`�+�Ur���J�9���$�!�6�J�l��W٬pS�0#`U��<U	zI�G���2�����I��a��ї���b8!=4���2�K,-��W������t:�Uɨ�?��X��v��E��a�$�" :�
�%ź ��϶i���ڎ����4m���B�g1����tF�����ȝM�,�����Bi�����QT�_�c���hW-�EQΈ]�뢬1�|�V�ªӠ�GLă��.����Φ��q��⠷4�J��K���B� �i�o�O/>CM��hP��&a�V���fl�RxV*�iu��W��]���>�I����H��n�'l�r�F�m�x�̭XUݵ�G���48����&�Kh������,�V��K��7G��*
�Uj��j��e s�Ai`�t�6Z��^p����u\���|�:@�~�~hSf16󐜌�E
p�DbA�B��2���M��'�����m�;w�w4r��C,�%�ɼ����y��(V�V��ǐ�0d_Ҟ�4};��C�=����PH� r��.c��[9� ��{������+?�)Ÿڏ&�C�N6�0h��M�@O�`2]�����p.�Ih.�U6����!���J�ڤ���p8��j�q��:��������և�T�D�a=�tB���Q&��K���(Z*��;Es�g5"/���V��L�\F�Տ�i�[Z���G��1;*��-����/`2&%��ص[��T�0.�?�1�_�-�:��}�i�s\�(ʐմ�Q��jpE�C�$���zs�9���J�&�����|?#�ȳ��ym8Ҋ�>x��HJ|�X-U�@�*��"�_�I���p��BP�П��m�u+�l�����Fփ�n�w�&b�3�F	�?�qZ��xH����W>*�k�Qwu�Q�,��ej�'1!2��,�s���}"��&_ /P�I�ͽ��A��4��ۑ�������䴊�J{�m��xH|A��8��ԏ��0�M��]Z�s �cC���Ӥ�ж�n#�2��#c)!����?�k�'��
�XVh&�d�����Cݶ�>��T;K�Q2�pPpL��D;a�&��,��L�B��C;�A�w	�Fu1l?�v�2Z�9�B�Y�cV�Jw����#��]���p�i��\�a8����"-�A_}�0�e*o��1Z5��Cy����:`Q��Q�zF�ƿlSpG�p��J;֯���<�"�w�~K�wJ+�Ë�hv�?7Ϥt��-7D�14>;?�)��-��r�wj�Ji�f���6Q��I0*�,(����*̙��x�k\��B�l��}�%�yZ�#+Axł���t�{��ۉ���2�`����������쏸� �/�}	Q0*Y;�n�*E��E���W��G�h����y�ee`[>������W���y�; ��f��'*"����4�1�
�D�5*��}�ƫ�n7�9sM��>��e����4Q!_�G��%f�j�k��k!��wj�� �!�=J w) ^S����^]�)�m���3��'���H���.�t�D5���M��a8�Af�r]�c[eAJ���2�0���7�Ẕ��l�2<��?{�h�p{<�o�{�0�8P�N��]�i�ې߉���t��݆�y���	+��7�!q�
�H��D�Rd�k���G��l�k���ĦAC���	������6��ٲV�m�KG��:�����' UC�%�b#&��yT~��6��Do�\8ɐ�z�J��{�\ڈL$������g�{NEˋS�DD�`=������w�A~��������<3/�\����l2L��PM~%�AW���(׉���^'KVA��iJG��ؽ"��[W��tj/G�����`}�&u��;����_�K2�Bf�����FN��:r���<=��{�הV��K�no@�!sJ�r\�Q�l=�~�5c��$��2�f�Dl0(�)�<��9��8ނW���[3����m��x����V{�&;�e��q;9v��>n��k9�;�O�jT�+���~q����XTX;���3�K'�&�v���/F��/�N��h�&i �  �O��d��u�������q��5Ktb�m*~�AQ8���ĺ���66B������+��|�4B[]:��P��$�WB[u�*��y�Y��룳��^�6&��ٛrߣkװqp�@\s�3�5+ۤ�n]�l]_Z�-�T#���7����޶�R�K��Da�TW)Jk��w'�'�'��.�z2<�Lg���kL�����ņ��������w/Κ��IUz�m�j����s����WSm�d���{�C��K'bRG���}����J=����G<�遷�}�2�&��<���x��5�5w+.�0����0�D)�u�|�Qi2dHȅ2�%��J�秧����������e��W5x�.�T��7�M�_���4c=�-H֙�2l��8TNkZ+޶�C�[�F��AQp�ht�W^�[�'�Z��I*��Zl�U=�{huR�eG����	���)�r��Lm�"�d��_�T���t�+Wu�W�m��:�j��.Ԅ8����xz����yu%^Q�ln&��yU���y���W��t�6����,\PaưxS[!*�=���5;�'��>Å��~�� ���=�6	$���V䜠�ߣ��� �w<\�r�C����G܊W�Ʌ����ݷ��2�d�hdNf��h��5/�6����D#�!4�;��ڈ��r��P��$<�OG@����ROl�<����~�Qc9ݣ���������)G s�#�-e
�5"z2�.X�-xp�̃`�fE�!�5Z@y�k���82�(*�my����o;�ₔ�m�#2jT���O����w*N�����~�,�/��X�-�H�z�i�{�z��s�t�ٽ�48�O��*K?���[8;�mE�[��4��ub�oA��.&�mVQc�R<P;L�TqYi9lEpG����]d�3���po�̥}�z��-����B��h�%P2���	3��]Ҫ��]~c�q����򟴳��l<9��T�ɿM 
�� ���؏��}��:϶��t��A����\ĝ�� �X'�8kr��`[�aQ.�¼�Y���0+�ڔ��	�б����YB�l���eB�8���@��-[�W�H	��������D�~����hDD/�=��Ӌ7h��aY��3�}b ���oDU�d�F0���z��!��u��Fm���ſ�X����崓�+51�bgޕj���y�=�&Nqx;����R��R{Nq.8���_���˷�Te���^�c�Ӭ��Pfl�� W��y�.�x�JC�0~�/��YV���� �4�*cpa�*��(�.Lf<�z�굓�}oƚ�/�X���������%�3���}������vP��ȳ��=�EFy��N�#� a%ѵ �,�(�~) [E��V%G�져��鈄��a���Nn���E#�ٌӭ���P��4k���0v���(���CCj��A߀?04�M�u0{{��-��u��f_r��Ě)v�kC�W+�i�\_޿�!'L$�L`���M	�M�Wt��0	zou6cQB��|!�p-"���Ѩ�{Ss�Y���ǣ�X{��:�.��+mN@N�^�EV\;5��OO{��0oc�8�D2��c���0��?���`������W<��X�>4�Nt��]�7F6	蠠4�6�E����\a)bw�p[\���;5�)}/��G�r�T6��|fGn>�����<������=���3���֒��Ŵ��_�c3�^����cH7P�Ĝ�7�H�65B���1��k�C���a�d�-q߃g�Z�<�HH�uj����֩Q�i��Nk�vشfm��s(�����,�>Y��2�@T�Ҳ��i|���P�)�k��m(��[��`u�W��x{:Ƶ/�K�S���*,\�r��AG��$|ݒ6�pK�	lm=V�؈�!3v��f���Β\��	Z,�&CӜ��p�᫤�Qi�{۔T�]i��J]���?;��٧�Y�+�rx�R%+v�y[㴡U�	�������lS�v�m�Ј� �Y�����5�����&8\�^T�eq{��/��,"4�p�eY�k3+4�R�[G��CҬlGJP��tFe)�a�,�hĥ%q������/�=D�����1��@**ٵ���MV<M���;aI���E�WDo�P�_������d�d��q�ͩi~��oB6�����r6F+���t0O{��vjs���e9- �	�%K�U?��B��^o���ڰ[/�RDx�m�K
�02��s��۬B?+��_a��J^($�*Fh�o��������o�J��7 OV<u�^�m�G��T��n�]b�CΗI�7l�}��0�z�]o����r�K燎�2قG0+�̬���x8fS�eη���̆�c�KY��}d��W��u���C��#��|$��3;zz����Z����/W;kJ�-U��Q_x�ɚ�������"ت!�=K$�E�f����ې��cb����E������~lȀWJ���Z�R@K��y���$��d?Ȅ��2���0T��͗4|���UL'��Ĕ@��]Z^!����H��*h��o����-B5�Z{ӧ��~����
$�"o<��0G�q�Dx���wIzC�Ca�rs�0\�(�:/�X�(k��8N/.a��������Aa3��N�.x%y��Z��r�B�I����Y൵��aӮi_��~��g�w��-�Е�+������diVݟ�t邧'�XƬ�~��r)��dz������I�k ��t8rC�6*���͞F^%����#�,Lg����;v�z�R}��_��Z��F�Sz����C~����~�)��;�/�A0 �a*cEI��&H��"�%�T�2˙"�I�م|Tftҡ��0*5���[�Wi�a��/}[*�[(�?e��X�.(�x:��x,���l
�3x��߶k�+/�OX�c3�WѸ��{��8�BRUbu��#GF�:R��������a�܉���o<�~8��ĵ�C��Xv��e̶�Lëv�0
`��,@��0G�x�T>��f���:�G��ׄ�_���x�N��i��>�\��N�iI�{��;���
��txG:�-ǫ0�x�E�y��-i,FD�jK�\\�T1����C�t"���Y���Rr'��ڪ���g�?���9&ܣA2�^Wt�1~�8�%��ڢk#�F�U!q!A�~�����x1�����kpL��]�������Lد�G���,���w��-����0��t������&Nskw�N�C��zY����uo��J�X��K����_r�_n��+��=�S��%�w�t�<|H����0��ҵ|�-1�}�)Eu<�~s�-(�$>^ӷȡ��^F��0_��X����⪡y���b�[+���>�seV*�ͱBā��P�n�ɓ�v�h/VHi��EZ^g�۰#�r�㟡��k��@��_����~��X��`�*}���w��D��B�˂�N�Ź��6&gM�.,=�q_�|wصj��J�V�ۣ��o��Z���4+.�QL��.-|�^�əp�9._UZ_��]1��o�9;��|W�뗒�i�7��N����F�g]�~�����Va be�~ʎ�8@��S�4_�!���^���Z�uaZ̛=�����#t���\M�u�������=�|��$��U/`�@����G�w>j�Y>jaW��-�Ʒ ��F��fC��5�φ=�2�禈ł�{������A�|��7����      	      x��\_w�6��?��{Nso�v�����w����K��I�B, J�~�� $H��$�g�-4����`03 �dVh��+n̂�����6Q��u��d��$ע^'�D���\�[^g;h�\9jr�j�V��^��L���M�euƓ__��������������"+��֜���4S�5�����3�����Ŋ5͎&�M{�9�F���=��+��-ϓ�@5�s~�R���aŔJa�0��o.�-�(��<��0+L!`���+$��a��U���O��;�����n~,M�x�6<��X	Չ��7���L
�䍔��rƩW��	�u��Xu�=q�Ƨ��,k!m�h���y-8�I�`��|�Xo=R�#�sQn�γ���e��p]W���_M�'��b�'ي�%?�͝���Y�x����f�U�6V+I���}�e�]���p�L�n�h�$c�s�$�%5��f2i��P\�����Pn@9�M�NR�kx�u��:R��Y8����X�*[ե��ʄ��[R�B��UZ�˞P2̣k�h����ǝf1�\M��|�I��y���+��
�1�]��&)���5߲T�
��%V-o�����mpgP�Ã��$3='o�Qg�kQ'�<��-�h�H6��+��
��L��Ks$3��4vha���z�ƕcvX�9�a61��x�d��FI���(�Z��t� d]�X�q��J���uG��;�25h>�f���W�fT��	�$=(�5	���p��o�L����3��ꨤj��%������M,��������`p�]��h>�F8�l)�f��R�(F%g9�K*S�a��؃��y<�`�����X�+�(�v�C,�`��<i�j@��yL-�`�`Z����Pn3��X>�C�F�BJ�
�&�Aáj�������ã�x	�4z�x���G	��:	[�s?@�t��n?�׏���y��T>�U���v�
:2An�H�3U���-�:?��J3���tEb�N+8mr�v��vq�4�)F�p4j�R_ V��%+9pH�"��(9�x��W�:�����ͧ�C��� �l5�,������P��R��.��xa5z��0��;�
��,@J�'�3P��:��G`�M������,8%9�G�+4�p�ִ�0�����o���z�i��uC=&�4��+�o��P��(�n�5��Y�mтҦRd�T0=l)��^����ڿ��?�:����Ek�<���1 ŝ]] ?���	��S�l����0|y(Ҕs��]C�C�_M�P���/}Y-�B�N�3��ﷸ�M������	B�,Ι�eb�~�Z����}�J�T�����<�*@�5�O�2�T�g�<���g��F��uu�N����+���� �d@�6��3�m*�@V�SK4k�y�TP6��5�+&d��`��t�z9��6/v�v7��&t��߹���x/{�J�1�'$�|�,�@,�f�r�sD%�*��2�-�#̳�s?�}4����޹�A��4Z�K��/*���U#��D�
�Q�A,�[ml#�q��$�_t;0���3�GW{�^�֙"p�
�8� {�q��ف���5���̣/�@1-#V�h/�7"����Z5�M��kpԩ�A�u������Z<?�3�P�s��e��P���3/�|�w���yNL��"���1�d����#Ӣ���ѢK��`mC=�A�g�U/��U�K�GJ }9N��\
8����<��T��ʺ��*Ŕ�N��v�Z���y����5V����1�rq�B�[cZ�Og�����=��Ԇm�5[�v��+O���zβ�&��RD	CN�g��B`�V	<cn�x)�@�ff�3�UZB����ܝyU%J��C���d�T�懢��0���.�Ly��{B���I�P�&�x�z���V�;����� ی7��"[��?yf��z�;�G}*C?C�4�CT:�Lɫ�A�q�C�(M��t�t�1����đ�����j�.�B7Θ��Y�$��E[rrU/�'�r��W���9�B	��sPE�e�na�r`z-
�P�`p��ў����iQ��4��Ш�3ū0��Sb9%gϣ�
�mn0�U
�;SA1����k8¤a8k�-��З�pZ2]�Eq,�� ���-���I����`L���ʵ��ν�n��^�0C8��LXUy�KX�2����Ͳ`B/C��`{GMxܰxKS��./�O�H�D�y�NW쮗5,y)T�N@�3�B;�n�?�f_T��^�P��s3[�ar,O_n300u!
Q÷	�tP�U����e̸$�u��3�s��>D�¶Cة,j(��ri}F�*6�� ݥ9�G���.=������m�sp5���,Lk2������3�<��"��/.]�ła`��L���$^O���+���G�*��ßx��FX��-� �f��*ǝF��/r<.�n��.0w�����P����Օ�:g�"�@������ ��᮫�,�7p���/�Lt�6d��Ց�65 ]�&`�����+.����4��R*�NTk��U.7����z�i�X&n��BO��3��Q��5���X0��Ő� 3�������|��9�((z������L3�g�h���Q]�>p�ot�jL���\̄LShW��/w&�����Ac��<�,���Sd2>3��*���3�ɿ��ѣ�	�7ӡ2@.�&���!a#[�g��{��b���2WϽ�-�KbS)�ӺtL[��g��TI�jr-A�W���%ZLT������F���D.J�R&�=�L�B[���<��0O	rw��r�LcO̷����F�3�٠!�C��z�L���{7�ʱ�K��� z����/$Nh]�f�Q�
���Yb�Ѹ���pxgc�?'=У�f���+>�����ۯ��y��(�4��x/]o���U����%���x��^Ń�8Tw@�O {��|�J��a�1�T鉰�7�S,:G
=��V��|p��ݩ��p��@[�i��`�m�������]7�O��8aq�ҪY�������pf�7��w��Ʈ*����Ѥ2���`B"H#���6]r-�Ǽ�#�s-0 �z.Йj�m��a�|�{��0^��X�Q�.4����7����=�(��sS�{n�+��la�	��,[c0��=>_���
�a��]L�揮e	�㨏T_����&�w!O�v��{�����JQ&!��`0��3��Z���r�&B�AS��������M�<��]N�w���D��^#Q��*P2t�K~�&2OA31�s���	�z��x���k#d1i ��`�N��Hї���~"D������7$z�ou[����rgne��j�n��gaֻ��0����{����L��O,䱽C/�-��Z��Սka�������)�C �ڎ y��f�������ku>ҏ���W�e�xz�e�G�ܭvƽ'
�h�a��2#��':����Ă�{�lʥ�!�$�x_	6m����]}����N���!q�����ي����8�i3,��b?t۽#Lãj>K>��D�3Ik��|��#�Qf<�a�IN�iH��wVg:�:������D|Ata'>
�=�u��C�Sy����-�i0��q���>�NlO�TM����k��>� s0Z���)�\����X�ֱ��	!����B��S^%!$7������� ��Ls^�J�#�q-!�ۍ�O_C����α��-�G��1�0r��Q�w�[��Ƒ�'�p��G!�G��*UFz�Gp�o� ?PKͪ��N��4�!�}�Q�f��iQ&��O���V�\�5~���{l~t��4���6<�>pÚ�rG������	��}ǚ)Md��sݟ.�F+�U�ǴN�6����$�LLv�UJ�`@{�^���=����L�k_�p�M���f���mۓ&��6h��Dt0���	���@X��pm�L/��q �  �$��?ӵ��롦���Սz+���Sʻ�ʓ����ޓ�9A��q�#נ	��B�H�#�$j��H��B���D����i��0x��I|��gLS����ʚ�у�>"yT�-�El9��ѻJy���G�4	k��}g�W��k��B�K�]��H�9YLo��H⛋����ͅk;���Y�~8�c��c���H�=�^G�/&M��f9���c��=�G���L=�GC���"Nx��Q�u
"H�Y�� �(�9�ݹ{)߼�T�-�Sz�JQǁn���M`�,��9G�#������c�������)S("�|�h��X]�SQ���`嚛�@��EO�(S{W��L`��k,�f���9�O�1��>�:�p��P�+�J��E�;���9�&�\���*~i
QK���O�-���H��=�a��	�~/���?�7Я�9q�/n�u���~/���?�7k!)�:u�������c�m�            x��\�s�8���|�l���n����e;�ķ���3���rQ�f�"5$՝޿~��(Y�nw|U�~"A��J˭��5(�~]�ڹU��V�ugŖ+�K�L�>b�z�ߝ8�v-�|+�]����� �M�V.�{`���U���
�z+�(�D3n�l��ZS���:�P��4zu��F˒�\�5�1����Veh��[S��Ҵ$��Z�ʊ�b�g��O��v��}[�����\N���VoDk˻�,���B^����� +$ߛ���MoY`_�_[�������|J��R7��Q��9S�"M�xc��+V-j��bNح,�cJ��y�8k�L��CW!��ru'l)��m�K�kpt:����Ww��U����s�k #�_I=���l��eZ�q�Z���L�`7����
~��U[S�ư�(t�i�v�o�'�|j�q�QW��3�wu�X�
��5��[����u@�+#d)����w������6�!ou���<+1��Y�QQ����9҃�ڃ��!�]k6�r���f���q��Uq�B3@
��oEPG��AW6,���p���I8����L�O�,������_�qsڽ�܏'���^mZY�X��ý��G��8�*���-�ƾJ2;�+����b}�n��7N+9S��S�Z8�Wd�:��AÀX�*l��qR�ښTI�F�m�l#�`� ��,*��/a�^�D�]T�W��������`�l�;i�-����tie���ޣ>cȰ���=��J��^GK�
H/�6�vx�Q��:A��WM8rDM���X͌e�:�R��]r0�`���~6��F{�g����g)��S�>�i��1�_֘��^8�up�d!�r�;5˂g�P������pAU8*5���Z��2� ��/Fњ�:<��-N�C8;c�qϾ�W�؏�,D%���4*gE�z,Y�
ޝ����
Z��v���J���[b릨[E[iڒ{�5����F�.��4�J�_/h�`5�e�2N���R�Y+Ԁq %E�k��i�g3��3�q۶�	�i%ФS��Ju��t�0(<���p�К��E-~R籛4�k~���(�:���=��������� X����=�2�0t��/}��ѵ��4I`GfP�x;�"�����FMD��:��$`�|��y��t�yc�G���	/���q7�,,�/�6�1���7�u���Vz��&�ļ-x�n���5`t�ȅ��Gx���_�r'7��$���3EF�&l&��X�	�-s��	|��ѧت,�OA�t3;����R�߽\sN�>é�������b���Dw�C�� Iy��̸q}nu������R��t�d���ih�Gva�2�+
�V��fPs0ucts��9��Gnq�(@�5ʘ/�h�@]{wJ8�U@T�6M�r�����O�p���m:��!���o�p�g�:���[]�N�_�^B���Oq�Nu6������!xp����\�_���"�t�l{QB�����t�4��v~_���{y d��m!
'!����b�\ ��#.��l泞�#�� �D�eȊ	�q*�R� x��X���ƣ[G�yO�[�Жj
��EdJ���!T4�0k�Q��+nS� ���3�u��+�ɮ@���xZ�`�S� ,�~,��J��;L�V���[�Q�JS�R�����&�4s�M����������Mm�,�G�.�+��.�O�w�|#X'L���N*%�n��h]4��y9�����az��:���Ȕ9pj1AS�7�s�N���Mjە)NAzvv$���������D&5D�s7��S,�f���"��.�����W3M
k_�RФ˳Ex�u
G�g��O�e�S���9��&�]�@���qy���*��a?I��I/
&m]�Q�'�J��V�g)�S���f��69��dJ!(1�5j�2�@�s�G�q
&`,�҅d�%@7D��������}�q���$,�$�P8�#�������=�K%��S0~��v�h��>��Ÿ ޱ���b�Cd}n�?�~�y^������u�K�sR�-����@d��� Nm���սPdl��z��i�p	���᧦yFT����i��qw�PBQ�c�pLny����8�5J�"̏�0��^���~N�	N��k��1��w�0�G�-�!�׾�O����e	�@�;��$�/
�<�oQ]���&T�-0��V�~ݫ��c9h��؁R�I��K���O��ZЀ��R�6�Z�<VkYCā����rO�3�Tv�<��2wPQ>8�I> I�/����[8�!���mϓG��)@�Ro�m����$�^oRM'��Γ��!���x�#Qϫ孶����H/�%�m.�z)F�j�%�Nq�7S ����
`H#�
�s���R��ϳ�v�T3e�#_�0=�V�������=U��NK��?���Zp��&��	o�AX�򞗛i�f��� �(}g�P�!�V���CϮ;4�/y�΄�{ ؘ
����nㅆ�F0�	=�D����
������T	\���!q�h�{��Ő9�T�ࠞ�KA+��Wv�%g-�4o5�м�Y�'��Q�j�T&3j,���Z2
NV ���}����0��m���Hi���~&}�|����pv��B�0k}Ѱ�v��8�׏�'����	�a����K3�(���#@"�$�Tb�\􎀁p(ھ\��YσL�g!�	�m EW2 �H�ɩ���pg�=�阨����<��L��SYU��h9y>��cz�u���۱����c�έ���X�HD����T�>��h�~��x�+����f���䎃��m�>E��~���1�tYx�B ���p��Cl�N�K8��f���LS;�c�,��a8
�<�`�6�.�$��/�d��E�k��JXVN딌�� s�5s,S+_u�<��
A-�xNw)���nϛ�Ǉ>����\��#c�#��<�;�6�2Lb(�|4'����)0����R dR��yK����P�h��7h�����B�ax�+z��	Pdw1�?��E�+ġ�
�JՖkr\��O���T�����X�Ae�����x|f���ܰ�Yo��L8�&���bpvQsi/�}џS�23�(V�µ\aP|9��>�哸��ڀ��#rVJy�-$��M~�yׅQ���8���3�����vE�SM��Y�2*y��	6�ѥ0�=�t�07��!N)��5� �P(�����&��븞�с?'X��u��tH/�L�������������,�y�+Hq?8���w�`�i%<W8���Џ�yF�2��JA;�G��a�����㓜��[��d�~y�Nq���nh"=Y ti��V�� ���>&uHh�^Ʈ�Z�Q��l�����K�u�|ЩF�"LC�D���;�29k�-�����bu��������}O4g��dn��UY��
��c����I�t~�oLN46l�6QA��T��Z�;[�����]Xw�.���.�4�U��r�^�r+�hӋ�t8�%j�O��D��8��/�����"����x�sh��]��&�φ&Pp�x#��<[��!�H ����0���� G~�1\j���W[�g ���S��ܸ���Ӂ���Ę�J�e�����9���t�/���:���H��$�>e.o1�0���&w����q�d3��͑��"�~�
늦���9��Jr�p�|��X^Mj�/p����m[���E��FV@).��a��S���%IX��ЂE��J�}���8q�IL^�kNo���D%x=ɫ��YW�Ĝz�~R�\��h�&܁��m�г4���c�_��Jb���c�&T=����M��c]��?O�>;C�? @\[��+���/r� 6�=�"U�V��v��#*|�.�ڨY*�*p��\�v��~��?o�7\#�@�����j(�ӕC�9��JtЩ�{μ������p�����%� �  l�� �����~���x=�r̀�|����^.Zl;�󝱢ڀ;!��I�8�mk�s��)]NKMv��}��q�q ;s,|���ů";X�C��1���v1ތ�RM=��cΪ�=��x�eEw#��C�2������41HO_%Ӻ��\X�j�� *�P�:R|5���{�<���\c�$�
o(c�-x������p�B22Щ�9�A�zn�k�}w֔T]��ѩ��6�s����/����S��O:b�
:�n]ȟ:/B5|Ow(0h�.�
&Ed�B,d����N��4�r��+�N�_PNb�c��%P�@���T��j�K��H�Jq����`"1�C	�fY=1Oo*j��M��b�����,|���1�l4}t��⃵�>[��w����:�q��xH��-�
�B�В�k�D�6Q�?//5�ս��ɠ,kNw�qa" "�y<:���8�3]K�L�U��ĚX�T�r�?���+�'	��+XPlO5�S�^&Å�����)�'Z��w�׀�1���?�9���Cp]���������~���>����a'� �2΢(�������.C�,ݱ�V�����3�.
K}��^�<p�x�W�����tO�'���
�/@�n���Y��L�r�ʴ"�L�lM����9���;������p�߭@k���������Ӏ�Zng�.㤠���%���3����3�r����я�˅x����O�~<����z���q��         �  x��Z[o7~��
�/q��,��En��I��(`@�f(뙡:�X�>�G�����/�����";1Z`����y.��΅Q�6y��U��J�J�(�FYq嚬Mr%�>�
)
Y/աMe�"�����t�T�Ye�0�Rc��7�6��jE���u��Um��,���\Z���)q�-3o����ԕ����g��T�Zځ��B�>�j�P��R�_�st*}��yi�JW�
��v�7�ϲ(��UuГ�e�J�ڨ-qQ�#qs���b!��n���ƉB/`��,u����7�P�%΅����iǚT+�����~�����کڋ���X�sUAB����N�2X���|��9T�r�)V���	�K%ְ�SշZ��ycu����L�������J�\�vjE�+%Zz�i��0Z�pjT�����B��a)�ꦩ\�i/�va���b-oI1�α�`�ʈBY�.�8�nt��8��R,jS���*� �e꥖le~��ԮY�x���k��ϰ�q�Tv�t4�Fb�̪`q��Bn�i�\�Pur�j'.�~�\������������)���s+��ё
jx\Zr�P5G��g!�?x���n2����B�=ùw�����Y)���U�T�Na�w!����GF����"3@DX+n�������cm��+�~��*����H�/�#H�g��]WS�Bݭ�&~���K�AjJ�5oC�3�G�mV+�Q��\���@K[F��@��N���("#3�YB�'Qր58D�v �CK��X�%%�Z 8� w.�@q�Lz
�(���jK�H%��b�|��� ����k�,s~�Z��&.EƐ&�����f��?����e�&�pV��≏|/?KJ۴�������;Kx��q�\��V�z��F��b�K�y����ΗYV{ZP=�o�_�N���f(���1!�l�KO(XbE/��� ρ��&�d�h���ڼ�{�k�����J��*X��LOh���>�tT�#;%��l�$(d���༣ ��ҡ6G$��y5����K���/N.A1�$��&��tUõ��+�iɧ�oGs���Y�cy���������5�b�ە�;�����֮��a��I	>��X��G�q6U�G�c�y��6y���ꊣ�E ��Q�q)	u��
�`q�Z��G.|�g4��i���c��(5�����\������^妊�a=������|:�H~�	ree��zw���Ap����J*^ơ��O�7��D�з��f��(���$[�.�t�"��2��?��wc�.�Z�$8���˳�xe�1�GX�\��E������ql}�;�K"�����E
�B�M%r��\Q���V�آ���(�j�Ȇ|�?ot�nG�$E4&�����J���e����S��å�=�9�U�+��X�G��q~rS�?��U��"�$㯢��f���֬�Y�'���xS�<�'��z�J(�cnU�[����R����p�:���j�{������5]BeA�Q8#4 �|��Bۼ�eBI;�u�[�X6/d��9��8�Zss
��J�!�e�T����-K�&!n����kUU�h���n�Psa�8]R:�OQdHW����ۮЗy���
�>Tzw��Gb�Q���&�m��x�,T��ǔ���V$�2���ߟ@r[����F�����h"���y�"�Q1IN�����������yefA���������<
��u�I���c
�%�{��z�*E��<��>oQ�{�I����j
Ϥ�<@r�1��N��'_��M� ̳`,����^�tJ�`�ki��k3C��S"E����w���k�8Ě:�-c��7u���2�b��S�E� ��$O��,��!��%�����rY��M4,��S�hⳛMs�$��|i��t�ES��Q�FXQ�Y�`�.�����1�ݷn�aOY�w=�9+vK�}B��l�6� ��H�_Tr�gg�жA��>�)x�ƾ�ڵސ)�2�������������CO�KZ����.������~nZ>���_�w\D�
�������dи�E'���nA�I��"~|ALT�E�����{TjX*]q�8����Aa���+���f�W�����O^�!b��Hf��MiP���<�1�x�A4z���!W���t	��է���.���'����^�W�X��6+I] �zy��6�=�.��x���XǶ�)b�zլ����O.�.|��~iC
����3-������o��>������}x�����f[T����C�E�]z�t��Y���Y�A�Q�{�£G^�	�awx)(����o�x����Q��^(��\�6���G���	v
ȡ����]�IyMs
�a7㝞F�Y4U橊�؍wޢo�*`$�Б\�琬cP�����h'�d��pe�9[.�-��B�!z9=�R'4 ���lp1�����.F��^�������͐��s��P�Eٻ��W�4)0�t����/��\<j��z��&���k;����|�W�����62�3S��?P�Iv���Z޵���(S*b�Z�s�"=�)�+FV��݌k��tO�}z�^��)k|��=з��,`L�1J�[�?�t��Ny��rI(;f�zY�����FGKGò�8ǚ.���I!�P2:M��V��=@�4�q�|ǿ<;w)o@�޴B�N+�}�u�V:�0�b1�py&cr���S���5߫�ɪ@e�S��銋��hÐ\�����#��b���r����2%@h�jb�~���9S{ˆ� s�\7uM�g��*9�����,�{��ٿ�%��f<� r&I�J����gn��ɻ�t�"\�
�9??��[ � ���ʡ�U��O�Hb4�E��1k�N�R���~&�7?����+U6~NN�Z������˧�g{x��_���h�\���[�|<>?���Pt�e�x��.6]$W//�U(<@,�A��K]Ѱ�;��[q��9�W�l�,ʧz{q�Uߤv����Wi��؍����s�'� 2EHY��˦�G�	� �3�N��fw�xr�Z��E�4D���خm�F��yJL���$���/U�}�G�WJ�A�^5���P�rp�*܇�n[��߼��3��l]8�+\�Z�p�*ᇖz�0��������Ks_L��'��t�݁ǝJ����kwW�T��Lï�����sO���9^�+���34�\�v	��ZGM�_����m����L�;�`��'��\xr������ ����?� .�=w�s�e��H<�&h��#�N7���F��MӍz�Ou������K?3�YD�,"/�0=;��W���W�m=G����WW���W%q�}�u�W���3�u���D
U���{��6mI�Z����Y/V���I �wȔ�%R��k���e9�����%�$.�m��(t��8�o�����W��Kك۽"��*�;j
��(n��x���R/ĕ��`s�8���|x[1~Fl�h��Lq���Mu��_�z�v\�!�knXhHM���ɳp��������RX�	��w;q���O�d����g{��`��#w�0Xqэ@��fC�v�c�iKs��-�Y�?�fN�^�|g�i
�i�o�ÝV��/�����N{�4�	}�KB8}��}��&�f�1���b�j�M[�#Ň"�K1�@~�}���=���O��{ ����=�7g)��\���������t�a���'O�ZFZV      
      x������ � �            x������ � �            x��]�ܶ��<�+X�r&���U^�]�O%�$K)[���U��`Hp�YI���u7  A��SwW~,�D? ���n�4�K��#.Ċ��
ӯ�C��ς(�yDe���%�����+�X�,<B���|�䙨�E����5gi�[��Q�,����v��kx��[�������[��)e��2�Yvy�c�<`*G�gK�$������1�(^�4��=@u��n�&�R&����=�؉�`�(A"P��FD=U%��Q�'Y�z�d�<^%���_뗤�v\�ַ��Ȧ������A,��J���z%��@���f6��"���{"Q��Y��,�T��ޕ<J�
����7l��Iu~7�틖�p[��'3Ti��}~�;�wϠ�0��h�	6M��)%P�wI�Ce�t".�2!�`����H"��(�R6l)�'�V�2`+U.m�����ЮY��|.3��C��ݯ�����l�+�#5'��1��6���ꖧ�y�L_��$�6�-�����V���l�A�u�M��z����\)���d��؝D0 p)5��Ц�t �/8�uI� ?�Y�u>�Vm�]�l��@�,�W�5��SU�=�ڮ3b��
�t����m�0����ٚ���'r9�]Q��nH�FK�*N�XBW����JD� �!�v��1 �a!�D����i�'׍���������Zxy�D
/��eΔ8[:y��"�A��;b�Pn[Ci��E"tER�2����V�)�Y����k[�"CF�[�!�3,7�eeiQ���0���c.�ߦh�"�x���f䩰��'��Kw�J��h����󡃱s�id\w����8�A	
��mC���DfV���t'C��$mu�a��ż5T� B���{�ש��Hʋ*��f��۱�����J�g���X,�~��Rv<�U��$�Z��^�#3��{�u^�4�)l�<�A(��� =�Ög80�)|i@�#��_��|�XM����/���6�-mfc�i%5�L�asp�/���:���1%�ٸJ���-�Y�M.`\��0���|����I���T������[P�������*5X��$�j�;�=��4݊l�m�E�!��J�}��=���y��0M���A�c�Q>y��A�Սz~#���>)s"^)EQH
����}U��5����n���@��,��;���Ʀ��J�
�-�a�c���l�y��,M����[�XkSdR�e�$0�9�:�l���EG��l�d5bp,u$B�H��7�C�V4Η�9���ES�4e��7�پ�5��\:f1��&/K�2�6����Tg�f�e2��Q�ӧ�>̪]���z�&��Z�ZA?cU� E���e\z��,����_����M���!ѣ�g��|c�&0uY��鐮$�@G����E���Y���2$I���.�b�'����oI�?�4�yM�)�kp�҆���**!u����)^@)+T�s9Z]�xO�f
����}�˶W2M�za:�C^�Ѻ5�R`Р�Sh���g]�A��]�(x�D&�`4JщJv��]���8�n��%g  ���L�?Վ��\_G�J����gG9��qaQ.��3�R�8����x��{��u-PS�i`U�	e<�{�<)��F�vz�;>ːb�}��Q�A9��|�9� Qf<�2m,f�8n�7"�p�ï�g�Iy���qdDv[r^p��كK�L�ؔk�2�Xŵ0�~��K-���z�&!�pb�D	�#p��p���+�8�`8�e�`Pf�!5 T�SE#w�4�T��Zl�����4��#T^8R���%���s.��1*PS�US�l�m�^a�[S��%C�ܶ��/��_)Лn��·��^��է8&��t�u�=5͡�'��6΅H� �y*<|��� |�n�����۫���$�
���m減�T/���r�<i)6�N6�}��o�3F.;Q�6a���ȱ���!�w�?B��Mo DNi �{a��p�6n}"�Q;7�-�	?]�E
�Q�2ك���k�=L��Mr���9u�N��?�o�g��q�t(�Q��8F�S��3���yl�D�H�G��U����\r����NP��>��2\t�������r����D���d_���6�����B�MC���1���\O�f����/U�>��c+;�+�(��ɵ�����Rυ�=|6��^�f�:�9��th�d#��t
���Bf�5�X�?׸h�:�%��U�3 	��{��2k~L��)���q��o\ȃ�mL���O�)N�oL����rT�ä����T�H���/3ᶖ�y�sR�G޵.��RN[�K`Q>c}����hti���E�(f�:89��X�ӑ��po�f�9aKNK"x��e9�<I�=�S�p �Z�P��B/)B���_��MƩ�3��'��y	l/R���Z�i//R�0�E�O".������*~r��<�O�e>���?�o����>����q>��qXTgw���ֻ����]�B�N���%j���d�sg�����~d�,�T�5�� ��1_
����~y�ˏ�D��3]�~rM0oª(#²L�A`T����0�@V8�B��Ʋ�;��e�e[N{-�x����c��BZ�F+ӽo�^�9<�UX�B��}�r�b��U{�y��6vi�S�d����N�i&�nCùQp��Q�$#��S,�3�
�Z��6+�����L���2E�(<�p����뉚��խ|�N���Ei�|�Ꙛ���>��z��e����Wʪ:�e]���h�V�n8�}fٌ{���,gŢ���G)۾y�����QrkL'd0$ !Qҽxq�K��?"6��2N�J�`)z6�b9��<{�$k���yNUe�D��bS{�X�?�x�5u�&��JBr���[����^��Q��SJ'�cN�U��R=�w��D;fӤ�uL����8����U�(�֕���6�xX$'�T���)j���5O��Ψ�G�?(�O^�'QM7AƦ�4��3�2i�c�0�%8"K�`Sv�K���"�������OCM�����2�U�����F�l��$yx_4�σ���4����Ѱ���RYv?�~:|�[0 S12m �oAK��0a��F='��V��:�P��%]62���N�i��{��+g�
[����?������o��Iv����\�y���l�O��h�]o��&��e���>�Ky�F�mO���=�Ra& �@ub�ᑜ����@˲DH�6HD{��t?�t7-�wD����UlSLTk�"�,V���8���7�=ig��H5��:C��rk�;�C7�i��\9�	�G&�c�9��]Y���#������u�:��(�g�U�@p�#7���^㕗u�0��Kn�7�dd��|pI7���߫��$��r�L��M���������y�禄K�n`����[(�3D<v��]���.�b��2lG
/'`��et�C&�i�*d������a��u���HJ1��35I�v�.���2 ����H��n��F�T��$�(�@�wr�1�B/]�X�	���%u\!�8Q�q��+Sr�o�Pa����1<�h���2�2jC�A�K�iC8�{������l���R�,�������@����/���X[NM�0��q`0=˩1��EE*�eq�r���#ԃ��҈��q��1h��߭����K��rn�IS-�������<�s�d�o�|��yy�7E�%=�T=.��(��5o=a�/�	��4?b���p�˹�?6��u�+y�V�w�f��o�H��=Wih���1;��������U)�"�'mT��燲���-�|�8���LTIU����g�y'��1Bﵐ�(�QT|��j{�&ɆR�S�t�2�!� f2�V/�u�6Wt�
�79�<�x@5Ԩ&uV���a҉��"uF˓����V��ٔ
q���be�0��\�ڢTd�E5:�T��i{28>�= �  �N5���˚��3��!��/S�mI4��˼��mVCγ���Sע02�Ӡ�����4�AYgwC�O4�6>9D:�<8um��[������!����{wQ݆-�V�qv���ˮ��5Ɏ�3����k��y6h3�_�m�]H����z�]�𛥺�1D����T�	Z�{`JBqX󳴝a|&���Y4��dџA��"��Sȝ��35������_5�n�A��6:��)sS�{Z�8>��)g���5+�{�AI���������(���㣯|qbbڪ�1=5��=IM�f������k�`¼� �={my�����m����J��tgZ���*{W�/��7���Ǵ0�a��g��/�����U���*�8���V��{#D��5�0�,.7NqK�Ɔ��d�(���Е3��D���Aa|��A�T�ϙ�*�}�3��g�,��>,�<�*�.J����h ��Z�$jOGb�#�(����ܹ5qg�QG��<<,� ޳��b����o��C����xS�u�"0Dǰ|+E9���bƱ���A&Z�L�����g��]DM�A�d>�9I��z��B�ˈ�2�����V]o�0:�O��j�L��e0�;W�m��i3�4�\�|��ܟ���>��)���o�M�_��Z4���J�=����4��6�;�h*����z�Ѻѕ�W~!�~���Y�Κ-̯�e�ʩYx��]{��{4J�T�v	����?cr!�k�{�<T��*��G�R�:� ��o�؇�_��Y��;�i�\:�9�Wp�?xfr��c�sS�eJ5�rFX����6���5�����J.�D=����@%7��Π���o|��H��7�5:җ�/$��1=�"3<�r
�N�	3��(���7�hs&hh]
3 iU��V��!���P?���E�4���릌����"���6ڳ����:�V�?�����G�k�j\�s�"�P�gzlk1P=�Jq8��|_3W��`�x���3Qi��"�h/y\o9Ԍ�MQr�Qc���xX�� 0)��vj�㤖b
~3�ZF�nn�u=jJ����?��+��uU�L$	��U5��@��	�&�Py��:WB.+�땎F�����|^c+��q=cYs��/l?������6o"76���Z��I7�94͡�Q+B{�߀��&��4I/������.t��.� ��k���������h"�b[w���H� ��FSoX���7��8�G���M�Gq��L��*�DvI�+7�Y��7���+1�sP Cw�e>�����]'�@ݽ�ぢ���KS��� �7.�MD})C�T�A��BI�p�
C7�R��~~�py>��/�|>�ϗo3�G�HUdy�&迢	�:fI����Ү�#�q���Z�����Ӆ�}�(������vЭ�MʫA�9���9�|A㰅�͇-U��]��ު�����%��@yi1g~�~!M�1|���2��LʀZ���C�Mr9���-����#x��@��2�����M����w���H[��[��K�Ji��o��ƚ����r}���fa�����ɀU�pg�6��i�`Z�N-�Q���aS.�.�e�[��f&M��7H�X��B��4�bm���H���S���'q*��/_���:�J�(8�^�L�#�DH�I�bi�[}�x��>1��_Ni��	범���a�R��r*gp��n�lDD�tE��.�i����ue�l;Q�&Ƭ�ė㣿�� ���H���'�d��[�Sy�8m��f|��ێ�ݤ[m���,���'pe*jik����a*"�ƍ��U˴d<�\%��N2J4�!Zn�7�#�Kt�}��G��NE/���z���]]����j]9�o���"�8YaYK&�È	���7��[��ի��0Рͽw@��l������c"��9^��ТP��Ў��M/J�}u�VV9�z�2��$n�%�� m;ĪvxA���u2̈�20�qG�h�J�^,�0@,����t���<�z,��'��&/w�C�b܂��]w�9Tu�֟M��ѩ_�Z֕*�ޱᒩk��eS�E���r��\x�b5��+�yP,-=}$9:�%������4
��]��jTy�aD�Ffө�q���n��X�HqR&��LkD���5j�N��W�G���ؼ�`�,�gY��u�Ğf��Ӡ0�b��>W���^���+�[�N���fV	 �HA��c��6�7����Z��[�H'�A����۾�}�{��v��J��G#kHӿ��;z��E����3�������]ZhA�� E��๖���tm$^��i��a/����a�x#�a()^ˣ	K�����	 A���iMP�t����H+:9	*�� ).Po��}�=���`���e��)8d~��k�n.�q,.�|.@�t �WG5f1M��aYӉl�������6���u�!ڑ1~�Ç"s���)�8�%vt�`A���g����!'�� �ٯ����[�D��7������pt�k�R���n5t`�M�\ݙů�y������:M��*~r[��֧R��"N�p���Ò���7�k��<L~戲5Y����L7r���0���-��a�:Oѷ�������Сգp}��;�fX�~��9���v<��'m���_~�J���/!�PDڷ�Z���fX��s�o3FQsY9@ci{_�-��:Xڥ�N�	��:��H���D�a	q_�.�+��M�e���>�^�Wz� ����/tI�n��� G� �׭X6�@:�T~��kZчY!G�L�=@�[�7k#����z����k\�f΄�j���f�`~�~�?Χc���^�7$��
����H�=��^%�޺��0��>D�9��
ݕ���L�:dƦ���!«;I\���t!TZ����Lv��j�sGzӴyW�[F�2�7���,���Th� �K�ч���Q0�-���5few��p���2ۺ�i�ai�7�هL\���Ҍ�.\��>Z���[0�ʆ������sW8qj���8��}��Ғ��h��q@�JV��R}=^N>6�ݿ���L )qY��c�n𚒱�}�U�6���Fs{�gx_���t��-nO`�>c���ݎ�UVy+����q�_a�hp�r�MA�Чu�������5��x�1[L$��q)��Rjt����ƈD�/�D�i�8fҿ������6�kO�g�2��M�$��r/+�؇T�E�(��e�c<�T����U�_[���gEEn��A���c�G��8�7���t�A��^�T��=��H�P|��F������:J�9rE����
� �`ט9�0�����~x��$Uxӑ�ر@�8�Lg��ĢЧW���N����%��Փ����,��?U(72=��E�>=�Y���S�_#��R�\���#`I���8E2yj�W�T�˃zvn�q/��E����i|�Q?91��R�.��W�h���S�1F�Œ�9�UY}�U�ѕ����,��!�l����棚l�]�{�jt�v���5j�9��f�ϵH׳�����\�����#�ă/�9��oj���#�� �J���u9������s�4�Xs�{����|�i��Xj|���R�{RWߥ�g`�h�[��E�6�g�,_����f/������>�����         /  x��V]o�6}V~�p�.M�{j�4-�A�ؖa�%�&J�I�u�ν�$�q�?0�ml���{�]�����(����nwkl�Œ��E(||���tF���A�^\�ĥj���n��ŧ��5�nu��Z���_ۭx��N�m�,��^�Q�[%˵�&S��e�n!�b#;6�ي�Ci���5�N-��EM��c;�"�r����9ZƄϊ�^ӓӔ�ʶ3:G�,1q��Z9ՖʋeD@q�|T,2�B|�(=�a��a��/�}��W|�Qm/`��;�Z��h�}�|8�<���@u���D�pM�A9�A~�w���P0\���kg�Sb��S�q�k���U
YlmDhi '}ß�� ڋ�V�T��v��/�nd+��n�D�]p!�D���#d���uj#�Av/�W �t���+�J�􉸳�����m�>Vg�Z"�I:�c�u��01{�R'(��'���[����Q��(��t����Վ"�4U�`�e�;0���'�������SdH7�� �+6�N��K���C��]�2�jC���w��Q�v���^�L<D�EXb��=��%�H&��ޫ�7,�^W1�6VM��g�2(g;�^ s0ƙ���(V Ri�Kk!�(D�tKt��e��u`vC����9��ѺU�%e��_"R�O��#f�m��w�U
 ��i�\�S��σ{[�LE}��NGL���B�yP��w�S���F��n�f�4ҭ�@E�DfA"���Kh:���m+�까�@ݖ��Ƃ�����[�� ��"v�\��/9��r�Ǣ�HP��zXꕶ��ȭ�+Ҝ�D��b�\��� �wsq�`��7 (�nh!���ހ m���(�A�cI�ҞW�GP��1U{�X�s�όĢ�W�շ�U�N�ϩB�T׏�Wf�O���i��ߔ\S#�����Bx4������o��'U#�/����-��֕�qM���%�N*w%�a���$>�}S�����]�쯨�o�WU�����tq���4����o�,Ki���$s�O��{T�A�����B�$�������1\����҆`���Ȋ���ȃ�|(]_�2�@����󜪱7�>�p
*B�:m��P�BU�"��<�*uM�%Ow�BV�&��0c%�vT�F�v��Gⴟx p�t+�7���C�A��w/���\`5!Uk�_���jNKG��	��T��<'�3�X�~��P�?���!��S��D�}�T@V�����Ӗ�y�n�海�jݼ�۹��UeT���/���F�Q��8Kԇ���/�w�2,�T�ڦy��P���יWh^U�[��
��`9�Pd��d��i�zE�	���e.tMCڥ��9�bǱ^C��f�\�� f����e`P��7S���w�1�c.�nI3͋϶��A3�)�����9�{Q'�"_��1v�8 �0ψj�w�P2��'Z� �Yڍڧ�0��&�L�r��Q�i]�A��p���B��{���ՙ�d��Vkt��ӣRAj��,�"�P*�������,����5ߐΡ�On���{�C�������?>��            x��\�s�8���|�l���n����e;�ķ���3���rQ�f�"5$՝޿~��(Y�nw|U�~"A��J˭��5(�~]�ڹU��V�ugŖ+�K�L�>b�z�ߝ8�v-�|+�]����� �M�V.�{`���U���
�z+�(�D3n�l��ZS���:�P��4zu��F˒�\�5�1����Veh��[S��Ҵ$��Z�ʊ�b�g��O��v��}[�����\N���VoDk˻�,���B^����� +$ߛ���MoY`_�_[�������|J��R7��Q��9S�"M�xc��+V-j��bNح,�cJ��y�8k�L��CW!��ru'l)��m�K�kpt:����Ww��U����s�k #�_I=���l��eZ�q�Z���L�`7����
~��U[S�ư�(t�i�v�o�'�|j�q�QW��3�wu�X�
��5��[����u@�+#d)����w������6�!ou���<+1��Y�QQ����9҃�ڃ��!�]k6�r���f���q��Uq�B3@
��oEPG��AW6,���p���I8����L�O�,������_�qsڽ�܏'���^mZY�X��ý��G��8�*���-�ƾJ2;�+����b}�n��7N+9S��S�Z8�Wd�:��AÀX�*l��qR�ښTI�F�m�l#�`� ��,*��/a�^�D�]T�W��������`�l�;i�-����tie���ޣ>cȰ���=��J��^GK�
H/�6�vx�Q��:A��WM8rDM���X͌e�:�R��]r0�`���~6��F{�g����g)��S�>�i��1�_֘��^8�up�d!�r�;5˂g�P������pAU8*5���Z��2� ��/Fњ�:<��-N�C8;c�qϾ�W�؏�,D%���4*gE�z,Y�
ޝ����
Z��v���J���[b릨[E[iڒ{�5����F�.��4�J�_/h�`5�e�2N���R�Y+Ԁq %E�k��i�g3��3�q۶�	�i%ФS��Ju��t�0(<���p�К��E-~R籛4�k~���(�:���=��������� X����=�2�0t��/}��ѵ��4I`GfP�x;�"�����FMD��:��$`�|��y��t�yc�G���	/���q7�,,�/�6�1���7�u���Vz��&�ļ-x�n���5`t�ȅ��Gx���_�r'7��$���3EF�&l&��X�	�-s��	|��ѧت,�OA�t3;����R�߽\sN�>é�������b���Dw�C�� Iy��̸q}nu������R��t�d���ih�Gva�2�+
�V��fPs0ucts��9��Gnq�(@�5ʘ/�h�@]{wJ8�U@T�6M�r�����O�p���m:��!���o�p�g�:���[]�N�_�^B���Oq�Nu6������!xp����\�_���"�t�l{QB�����t�4��v~_���{y d��m!
'!����b�\ ��#.��l泞�#�� �D�eȊ	�q*�R� x��X���ƣ[G�yO�[�Жj
��EdJ���!T4�0k�Q��+nS� ���3�u��+�ɮ@���xZ�`�S� ,�~,��J��;L�V���[�Q�JS�R�����&�4s�M����������Mm�,�G�.�+��.�O�w�|#X'L���N*%�n��h]4��y9�����az��:���Ȕ9pj1AS�7�s�N���Mjە)NAzvv$���������D&5D�s7��S,�f���"��.�����W3M
k_�RФ˳Ex�u
G�g��O�e�S���9��&�]�@���qy���*��a?I��I/
&m]�Q�'�J��V�g)�S���f��69��dJ!(1�5j�2�@�s�G�q
&`,�҅d�%@7D��������}�q���$,�$�P8�#�������=�K%��S0~��v�h��>��Ÿ ޱ���b�Cd}n�?�~�y^������u�K�sR�-����@d��� Nm���սPdl��z��i�p	���᧦yFT����i��qw�PBQ�c�pLny����8�5J�"̏�0��^���~N�	N��k��1��w�0�G�-�!�׾�O����e	�@�;��$�/
�<�oQ]���&T�-0��V�~ݫ��c9h��؁R�I��K���O��ZЀ��R�6�Z�<VkYCā����rO�3�Tv�<��2wPQ>8�I> I�/����[8�!���mϓG��)@�Ro�m����$�^oRM'��Γ��!���x�#Qϫ孶����H/�%�m.�z)F�j�%�Nq�7S ����
`H#�
�s���R��ϳ�v�T3e�#_�0=�V�������=U��NK��?���Zp��&��	o�AX�򞗛i�f��� �(}g�P�!�V���CϮ;4�/y�΄�{ ؘ
����nㅆ�F0�	=�D����
������T	\���!q�h�{��Ő9�T�ࠞ�KA+��Wv�%g-�4o5�м�Y�'��Q�j�T&3j,���Z2
NV ���}����0��m���Hi���~&}�|����pv��B�0k}Ѱ�v��8�׏�'����	�a����K3�(���#@"�$�Tb�\􎀁p(ھ\��YσL�g!�	�m EW2 �H�ɩ���pg�=�阨����<��L��SYU��h9y>��cz�u���۱����c�έ���X�HD����T�>��h�~��x�+����f���䎃��m�>E��~���1�tYx�B ���p��Cl�N�K8��f���LS;�c�,��a8
�<�`�6�.�$��/�d��E�k��JXVN딌�� s�5s,S+_u�<��
A-�xNw)���nϛ�Ǉ>����\��#c�#��<�;�6�2Lb(�|4'����)0����R dR��yK����P�h��7h�����B�ax�+z��	Pdw1�?��E�+ġ�
�JՖkr\��O���T�����X�Ae�����x|f���ܰ�Yo��L8�&���bpvQsi/�}џS�23�(V�µ\aP|9��>�哸��ڀ��#rVJy�-$��M~�yׅQ���8���3�����vE�SM��Y�2*y��	6�ѥ0�=�t�07��!N)��5� �P(�����&��븞�с?'X��u��tH/�L�������������,�y�+Hq?8���w�`�i%<W8���Џ�yF�2��JA;�G��a�����㓜��[��d�~y�Nq���nh"=Y ti��V�� ���>&uHh�^Ʈ�Z�Q��l�����K�u�|ЩF�"LC�D���;�29k�-�����bu��������}O4g��dn��UY��
��c����I�t~�oLN46l�6QA��T��Z�;[�����]Xw�.���.�4�U��r�^�r+�hӋ�t8�%j�O��D��8��/�����"����x�sh��]��&�φ&Pp�x#��<[��!�H ����0���� G~�1\j���W[�g ���S��ܸ���Ӂ���Ę�J�e�����9���t�/���:���H��$�>e.o1�0���&w����q�d3��͑��"�~�
늦���9��Jr�p�|��X^Mj�/p����m[���E��FV@).��a��S���%IX��ЂE��J�}���8q�IL^�kNo���D%x=ɫ��YW�Ĝz�~R�\��h�&܁��m�г4���c�_��Jb���c�&T=����M��c]��?O�>;C�? @\[��+���/r� 6�=�"U�V��v��#*|�.�ڨY*�*p��\�v��~��?o�7\#�@�����j(�ӕC�9��JtЩ�{μ������p�����%� �  l�� �����~���x=�r̀�|����^.Zl;�󝱢ڀ;!��I�8�mk�s��)]NKMv��}��q�q ;s,|���ů";X�C��1���v1ތ�RM=��cΪ�=��x�eEw#��C�2������41HO_%Ӻ��\X�j�� *�P�:R|5���{�<���\c�$�
o(c�-x������p�B22Щ�9�A�zn�k�}w֔T]��ѩ��6�s����/����S��O:b�
:�n]ȟ:/B5|Ow(0h�.�
&Ed�B,d����N��4�r��+�N�_PNb�c��%P�@���T��j�K��H�Jq����`"1�C	�fY=1Oo*j��M��b�����,|���1�l4}t��⃵�>[��w����:�q��xH��-�
�B�В�k�D�6Q�?//5�ս��ɠ,kNw�qa" "�y<:���8�3]K�L�U��ĚX�T�r�?���+�'	��+XPlO5�S�^&Å�����)�'Z��w�׀�1���?�9���Cp]���������~���>����a'� �2΢(�������.C�,ݱ�V�����3�.
K}��^�<p�x�W�����tO�'���
�/@�n���Y��L�r�ʴ"�L�lM����9���;������p�߭@k���������Ӏ�Zng�.㤠���%���3����3�r����я�˅x����O�~<����z���q��         2  x��VKs�6>ӿ�͡m�������&�d�i��^�ː�,E�$%��� )ي_{F �A�#qi]`k��H|�[y[0j�Ź�D���ֶ!s��qU�Iĳ�v�p�bO�I�3�/�5�u�/Y �5+��'�08�~�g��y�ၗ$��~ޤ6�M&CnɅ�5�J2��3+6dz�leKa�%Q3I������Х4�|+6p/|d	�
��|�J<Q�Pc /kE�A�2���^~S�Q)1�y,��<�)�"vGw�Qe��E�rA�4��� 8mJR�p��wR�������B"h��
L]u�����DR��rӀgN�Ć��Gu�L|˜(�[�Q���on??��әrTdV��m�����݁��YI��.Q���mb�q�Ot����I,�-����8fXM5��J�jg	�(`S�+h��:p�[i4^����8;/8�0A�l�^�2�{r��Om� �I��I���16�L2��)��%����6wIt-���E�K
k"# Q��b�aJ
a���E��U��)�Kq3��4m+N�^Z��&9��H���v�?���ed���ɴ�vf�TwM�;ٌ�X�>��KL��WYr@��K��g�S�<��[j.ɇ��T6���lm
��1��̾S��K�"<dOp�59e�5h�A��4<�Suff�i�rt�'��G��0N��ߑgqK�Z����b���ڷi��K�՗-�_��嗵�|L������C~Y�%�`���z0b���8���	�^
���+/�2e2���Jf��:�\Ų<��i]O�R�(w��^�|g�R���T�D�sb����ʔ;��/u��z��'��O�����S���������Ε.lm��0�J�8��]W���9��'ر����I��<���j�"sP
Z?����8�N�]oC��o�s�CפK���1^�������]�k�{E��%�`b��"��/T��G���F�`[�[�f����Q��Út"~���r���a�s[�FǦ�0)��Vg����o�'OT̗��ޑ�;�Ϣ#���y'�C(Tkj�U=��I��~���f�g��	     