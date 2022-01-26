# Generated with JReleaser 1.0.0-M1 at 2022-01-26T20:45:31.308016645Z
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/ixchelruiz/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "1fcdaaddcd5c31237f7f7c7cb9a304c0e4080c8e54370bb3e486cf85df0dc272"
  license "Apache-2.0"

  depends_on "openjdk@8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/app"
  end

  test do
    output = shell_output("#{bin}/app --version")
    assert_match "1.0.0", output
  end
end
