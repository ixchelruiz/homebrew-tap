# Generated with JReleaser 1.2.0 at 2022-10-28T18:04:14.472997+02:00
class App < Formula
  desc "Sample application"
  homepage "https://acme.com/awesome-app"
  url "https://github.com/ixchelruiz/app/releases/download/v1.0.0/app-1.0.0.zip"
  version "1.0.0"
  sha256 "8a7a92fd49f0fe21a2fe7b87891fa2466cabb2ed99faf68bab1225feb011316b"
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
