class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.527.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.527.0/lightdash-cli-2.527.0-macos-arm64.tar.gz"
      sha256 "7a4710896db3f1433c3caed54229c14bef3ce3c5742e3fff5d5d24d8ab5578ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.527.0/lightdash-cli-2.527.0-macos-x64.tar.gz"
      sha256 "80ac054fe4c598003ccf9ac39af003e55f1caba41258e74a0d1bc68dbd662e77"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.527.0/lightdash-cli-2.527.0-linux-x64.tar.gz"
    sha256 "84e37cb52736acd261de1221d8ba9e98109eda22826b352e613e34aa23eec8ba"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
