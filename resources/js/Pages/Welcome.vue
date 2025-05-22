<template>
    <div class="bg-white min-h-screen px-6 py-10 text-gray-800">
        <div class="max-w-5xl mx-auto space-y-10">
            <header class="text-center">
                <h1 class="text-4xl font-bold text-indigo-700">DigitalOcean Cloud Infrastructure Report</h1>
                <p class="mt-4 text-lg text-gray-600">Technical and financial overview for individual and small-scale users</p>
            </header>

            <!-- Section 1 -->
            <section class="space-y-4">
                <h2 class="text-2xl font-semibold text-indigo-600">1. Description</h2>
                <p>
                    This reportasdasdasdasdasdw presents a detailed overview of the services, pricing, setup process, and account limitations of DigitalOcean,
                    a cloud computing platform designed for developers, startups, and businesses looking to deploy scalable applications easily.
                </p>
                <p><strong>Objective:</strong> Provide a technical and financial analysis of DigitalOcean for individuals and small organizations operating with a single account.</p>
                <p><strong>Context:</strong> DigitalOcean is a popular Infrastructure-as-a-Service (IaaS) platform known for simplicity, developer-friendly tools, and affordability.</p>
                <p><strong>Theoretical Framework:</strong> Based on the IaaS model, it evaluates how DigitalOcean aligns with cloud infrastructure principles such as scalability, security, and cost-efficiency.</p>
            </section>

            <!-- Section 2 -->
            <section class="space-y-4">
                <h2 class="text-2xl font-semibold text-indigo-600">2. Main Services</h2>
                <ul class="list-disc list-inside space-y-2">
                    <li><strong>Droplets:</strong> VMs from $4/month (Basic, Premium, General Purpose, CPU/Memory Optimized)</li>
                    <li><strong>App Platform:</strong> Git-based PaaS (Free–$12/month)</li>
                    <li><strong>Managed Databases:</strong> PostgreSQL, MySQL, Redis, MongoDB (from $15/month)</li>
                    <li><strong>Spaces:</strong> Object storage $5/month for 250GB + 1TB</li>
                    <li><strong>Block Storage:</strong> $0.10/GB/month</li>
                    <li><strong>Monitoring:</strong> Basic metrics and alerts</li>
                    <li><strong>Load Balancers:</strong> $12/month</li>
                    <li><strong>VPC & Firewalls:</strong> Private networking and access rules</li>
                    <li><strong>Backups & Snapshots:</strong> +20% of cost or $0.05/GB</li>
                </ul>
            </section>

            <!-- Section 3 -->
            <section class="space-y-4">
                <h2 class="text-2xl font-semibold text-indigo-600">3. General Costs (USD)</h2>
                <div class="overflow-x-auto">
                    <table class="min-w-full border text-sm text-left">
                        <thead class="bg-indigo-100">
                        <tr>
                            <th class="px-4 py-2 font-semibold">Service</th>
                            <th class="px-4 py-2 font-semibold">Starting Price</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr><td class="px-4 py-2">Basic Droplet</td><td class="px-4 py-2">$4/month</td></tr>
                        <tr><td class="px-4 py-2">App Platform</td><td class="px-4 py-2">$5/month</td></tr>
                        <tr><td class="px-4 py-2">PostgreSQL DB</td><td class="px-4 py-2">$15/month</td></tr>
                        <tr><td class="px-4 py-2">Load Balancer</td><td class="px-4 py-2">$12/month</td></tr>
                        <tr><td class="px-4 py-2">Spaces (250GB)</td><td class="px-4 py-2">$5/month</td></tr>
                        <tr><td class="px-4 py-2">Block Storage</td><td class="px-4 py-2">$0.10/GB/month</td></tr>
                        <tr><td class="px-4 py-2">Snapshots</td><td class="px-4 py-2">$0.05/GB/month</td></tr>
                        <tr><td class="px-4 py-2">Automatic Backups</td><td class="px-4 py-2">+20% of Droplet</td></tr>
                        </tbody>
                    </table>
                </div>
            </section>

            <!-- Section 4 -->
            <section class="space-y-4">
                <h2 class="text-2xl font-semibold text-indigo-600">4. Basic Infrastructure Setup (Example)</h2>
                <ol class="list-decimal list-inside space-y-2">
                    <li>Create a Droplet with Ubuntu 22.04.</li>
                    <li>Install Docker, Docker Compose, and NGINX.</li>
                    <li>Upload or clone the project.</li>
                    <li>Configure NGINX as a reverse proxy.</li>
                    <li>Install Certbot for HTTPS using Let's Encrypt.</li>
                    <li>Use Load Balancer if horizontal scaling is required.</li>
                </ol>
            </section>

            <!-- Section 5 -->
            <section class="space-y-4">
                <h2 class="text-2xl font-semibold text-indigo-600">5. Limitations of a Personal Account</h2>
                <ul class="list-disc list-inside space-y-2">
                    <li><strong>Usage Limits:</strong> 5–10 Droplets, 10–32 vCPUs, 10–20 volumes, etc.</li>
                    <li><strong>Billing:</strong> Requires credit card or PayPal, limited free-tier.</li>
                    <li><strong>No Multi-user Access:</strong> Only one user per account, no roles or permissions.</li>
                    <li><strong>Limited Support:</strong> Ticket-based only, no SLA or phone support.</li>
                    <li><strong>Region Restrictions:</strong> Certain regions like India/Singapore may be restricted.</li>
                    <li><strong>Monitoring Limitations:</strong> Metrics stored only for 14 days.</li>
                    <li><strong>No Enterprise Features:</strong> No IAM, private peering, premium SLA, etc.</li>
                </ul>
            </section>

            <footer class="text-center text-sm text-gray-500 pt-10 border-t">
                © 2025 DigitalOcean Report — Educational and technical reference only.
            </footer>
        </div>
    </div>
</template>

<script setup>
// No script logic needed for static page
</script>
