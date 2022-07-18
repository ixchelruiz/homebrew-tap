# Generated with JReleaser 1.0.0 at 2022-07-18T15:12:04.249799+02:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/ixchelruiz/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "5f57fb4151afac86fa4b392d64c36699126fe6962225f1f7c9065f0050a3a088"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app" => "app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
