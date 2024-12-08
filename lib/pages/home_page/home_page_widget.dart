import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('appPetAdding');
          },
          child: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 24.0,
          ),
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Inter Tight',
                color: Colors.white,
                fontSize: 22.0,
                letterSpacing: 0.0,
              ),
        ),
        actions: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Switch.adaptive(
                value: _model.switchValue!,
                onChanged: (newValue) async {
                  safeSetState(() => _model.switchValue = newValue!);
                },
                activeColor: FlutterFlowTheme.of(context).primaryText,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                inactiveTrackColor:
                    FlutterFlowTheme.of(context).primaryBackground,
                inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
              ),
            ],
          ),
        ],
        flexibleSpace: FlexibleSpaceBar(
          background: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://picsum.photos/id/115/600',
              fit: BoxFit.cover,
            ),
          ),
        ),
        centerTitle: false,
        elevation: 2.0,
      ),
      body: StreamBuilder<List<UserRecord>>(
        stream: queryUserRecord(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<UserRecord> listViewUserRecordList = snapshot.data!;

          return ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: listViewUserRecordList.length,
            itemBuilder: (context, listViewIndex) {
              final listViewUserRecord = listViewUserRecordList[listViewIndex];
              return FutureBuilder<List<UserRecord>>(
                future: queryUserRecordOnce(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<UserRecord> textUserRecordList = snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textUserRecord = textUserRecordList.isNotEmpty
                      ? textUserRecordList.first
                      : null;

                  return Text(
                    'olaf',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
