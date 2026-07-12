<!-- BACK TO TOP ANCHOR -->
<a id="readme-top"></a>

<!-- LOGO -->
<div align="center">
  <a href="https://leonardo-vasconcellos.vercel.app/portfolio/reacher">
    <img src="assets/logo.png" alt="Logo" height="80" />
  </a>

  <h1 align="center">Re@cher WebMailer</h1>

  <p align="center">A full-fledged email marketing and CRM platform with SpamAssassin-powered spam-score pre-checks, segmented targeting, and a built-in HTML campaign editor.</p>

  <p align="center">// email marketing · CRM for direct-mail campaigns</p>

  <br />

  <a href="https://webarchive2.leonardolimadevasconcellos.workers.dev/reacher"
    ><strong>View it live »</strong></a>
</div>

<br />

<!-- SHIELDS -->
<div align="center">

[![Creator Website][website-shield]][website-url]
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
[![Released][year-shield]][year-url]

</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#screenshots">Screenshots</a></li>
    <li><a href="#built-with">Built With</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributors">Contributors</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Screenshot][product-screenshot]](https://leonardo-vasconcellos.vercel.app/portfolio/reacher)

<!-- PROJECT INTRO: 260 chars max -->

A full-fledged PHP/MySQL email marketing platform with SpamAssassin spam-score pre-checks, segmented targeting, a built-in HTML campaign editor, and automated open/bounce tracking — built in 2005, ahead of its time.

<!-- END INTRO -->

Re@cher WebMailer is a full-fledged email marketing and CRM platform, built from scratch in PHP and MySQL starting in 2005 — one of the earlier homegrown systems of its kind, predating most of today's SaaS email platforms. It let a business manage its contacts as a structured database — people linked to institutions, institutions linked to market segments — so a single campaign ("mala direta") could be aimed precisely at a segment rather than blasted to the entire list.

Before a campaign ever left the building, it passed through a SpamAssassin integration: each message was scored against SpamAssassin's heuristic rule set (the same engine many mail servers use to filter incoming spam) and flagged if its score crossed the threshold associated with landing in a spam folder. That let the marketing team catch deliverability-killing patterns — spammy phrasing, missing headers, suspicious link density — before sending, instead of finding out after a campaign quietly vanished into recipients' spam folders.

Campaigns were composed in a custom in-browser WYSIWYG HTML editor (with separate code paths for Internet Explorer and Mozilla, reflecting the era), saved as reusable templates, and scheduled for a future send date. A background engine picked up due campaigns, personalized each email with the recipient's name, and delivered them in batches — with an alternate path to send through Microsoft Outlook for ad-hoc runs. The system also handled day-to-day CRM chores: automatic birthday emails, recurring reminders, and a contact-import pipeline for growing the list.

On the measurement side, every sent campaign embedded a tracking pixel to record opens (with unique-view counts) and was checked against a dedicated bounce mailbox via IMAP — addresses that hard-bounced were automatically flagged and excluded from future sends. Together with the SpamAssassin pre-check, this gave the business a closed loop: score, segment, send, measure, and clean — years before "email deliverability" was a line item most businesses budgeted for.

<!-- KEY FEATURES -->
### Key Features

- **Spam-score pre-flight checks** — Every campaign was scored against a heuristic spam-filter rule set before sending, catching deliverability-killing patterns up front so messages reached inboxes instead of spam folders.
- **Segmented campaign targeting** — A structured contact database linking people to institutions and market segments let a single mailing hit a precise audience rather than a blanket blast, lifting relevance and response.
- **Closed-loop tracking and list hygiene** — Open tracking and automated bounce handling flagged and excluded dead addresses on their own, giving the business a measure-and-clean cycle years ahead of the market.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SCREENSHOTS -->
## Screenshots

<div align="center" style="display:flex;flex-wrap:wrap;gap:8px;justify-content:center;">
  <a href="screenshots/Re%40cher%20WebMailer%20(1).png"><img src="screenshots/Re%40cher%20WebMailer%20(1).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer%20(2).png"><img src="screenshots/Re%40cher%20WebMailer%20(2).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer%20(3).png"><img src="screenshots/Re%40cher%20WebMailer%20(3).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer%20(4).png"><img src="screenshots/Re%40cher%20WebMailer%20(4).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer%20(5).png"><img src="screenshots/Re%40cher%20WebMailer%20(5).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer%20(6).png"><img src="screenshots/Re%40cher%20WebMailer%20(6).png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer.png"><img src="screenshots/Re%40cher%20WebMailer.png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
  <a href="screenshots/Re%40cher%20WebMailer_home.png"><img src="screenshots/Re%40cher%20WebMailer_home.png" height="220" style="object-fit:cover;border-radius:6px;" /></a>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- BUILT WITH -->
## Built With

<!-- LANGUAGES -->

**Languages**

|                                                                                                                | Language   | Version |
| ---------------------------------------------------------------------------------------------------------------- | ---------- | ------- |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" width="20" />               | PHP        | 5.6     |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg" width="20" /> | JavaScript | —       |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" width="20" />           | HTML       | 5       |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" width="20" />             | CSS        | 3       |

<!-- FRAMEWORKS & LIBRARIES -->

**Frameworks & Libraries**

|                                                                                                                  | Framework | Version |
| ---------------------------------------------------------------------------------------------------------------- | --------- | ------- |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" width="20" />            | MySQL     | 5.7     |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apache/apache-original.svg" width="20" />          | Apache    | —       |
| <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="20" />          | Docker    | —       |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

This project repository is for archive purposes only. No new features or issues are being tracked.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTORS -->
## Contributors

<a href="https://github.com/llvasconcellos2/reacher/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=llvasconcellos2/reacher" alt="Contributors" />
</a>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

[Leonardo Vasconcellos - Website](https://leonardo-vasconcellos.vercel.app/) — [LinkedIn](https://www.linkedin.com/in/llvasconcellos)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[website-shield]: https://img.shields.io/badge/Creator_Website-%E2%86%97-2eba7a?style=for-the-badge
[website-url]: https://leonardo-vasconcellos.vercel.app/
[contributors-shield]: https://img.shields.io/github/contributors/llvasconcellos2/reacher.svg?style=for-the-badge
[contributors-url]: https://github.com/llvasconcellos2/reacher/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/llvasconcellos2/reacher.svg?style=for-the-badge
[forks-url]: https://github.com/llvasconcellos2/reacher/network/members
[issues-shield]: https://img.shields.io/github/issues/llvasconcellos2/reacher.svg?style=for-the-badge
[issues-url]: https://github.com/llvasconcellos2/reacher/issues
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url]: https://www.linkedin.com/in/llvasconcellos
[year-shield]: https://img.shields.io/badge/Released-2005-gray?style=for-the-badge
[year-url]: #
[product-screenshot]: screenshots/Re%40cher%20WebMailer_home.png
