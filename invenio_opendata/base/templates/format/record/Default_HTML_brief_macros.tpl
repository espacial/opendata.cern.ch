{#
## This file is part of Invenio.
## Copyright (C) 2014 CERN.
##
## Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
#}

{% macro render_record_footer(number_of_displayed_authors) %} 
      <a href="{{url_for('search.collection', name=record['collections'][0]['primary'] )}}">
        <div class="rec_thumb_brief rec_footer_thumb rec_collection pull-ight">
          <div class="n"><div class="t"><span class="glyphicon glyphicon-folder-close"></span>{{ record['collections'][0]['primary'] }}</div></div>
        </div>
      </a>
      {% if record.get('number_of_authors', 0) > 0 %}
        {% set authors = record.get('authors[:].full_name', []) %}
        {% set sep = joiner('<i style="float:left;"> ; </i>') %}
        <div class="rec_thumb_brief rec_footer_thumb">
          <div class="n">
            <div class="t">
              <span class="glyphicon glyphicon-user"></span>
            </div>
            {% for full_name in authors[0:number_of_displayed_authors] %} {{ sep() }}
              <a href="{{ url_for('search.search', p='author:"' + full_name + '"') }}">{{ full_name }}</a>
            {% endfor %}
            {% if record.get('number_of_authors', 0) > number_of_displayed_authors %}
            {{ sep() }}
            <a href="#authors_{{ record['recid'] }}"
            class="text-muted" data-toggle="modal"
            data-target="#authors_{{ record['recid'] }}">
            <em>{{ _(' et al') }}</em>
            </a>
            {% endif %}    
          </div>
        </div>
      {% endif %}
{% endmacro %}

{% macro render_fulltext_snippets() %}
  {{ tfn_get_fulltext_snippets(record['recid'], request.args['p'], qid, current_user) | wrap(prefix='<p><small>', suffix='</small></p>') }}
{% endmacro %}

{% macro record_info() %}
  {{ record.get('primary_report_number')|prefix('<i class="glyphicon glyphicon-qrcode"></i> ') }}
  {{ bfe_additional_report_numbers(bfo, prefix='<i class="glyphicon glyphicon-qrcode"></i> ',
                                   separator=' <i class="glyphicon glyphicon-qrcode"></i> ') }}

  {{ bfe_publi_info(bfo, prefix='| <i class="glyphicon glyphicon-book"></i> ') }}
  {{ bfe_doi(bfo, prefix='| <i class="glyphicon glyphicon-barcode"></i> ') }}
  {# '<a href="http://dx.doi.org/%(doi)s" title="DOI" target="_blank"><i class="glyphicon glyphicon-barcode"></i> %(doi)s</a>'|format(doi=record['doi']) if record.get('doi') #}

{% endmacro %}
