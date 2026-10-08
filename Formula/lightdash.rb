class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.470.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.470.1/lightdash-cli-2.470.1-macos-arm64.tar.gz"
      sha256 "e6608d96b30399055d3e7b9bba15aa82cf46dce036d1d0c65881a67363b75497"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.470.1/lightdash-cli-2.470.1-macos-x64.tar.gz"
      sha256 "5886ba96ea66b5ff7fe0f9df108cca2ca1cbf32a26e38b37ea48ce209faf8244"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.470.1/lightdash-cli-2.470.1-linux-x64.tar.gz"
    sha256 "a3dca9fe14897a2f829373bab57e049286ad11ed5bb82efd91fb11741f70fa1d"

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
