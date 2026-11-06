class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.175.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.175.0/lightdash-cli-3.175.0-macos-arm64.tar.gz"
      sha256 "b5d406941d1e1b83f212e3cad8989a14f13d99f0d196bbd08b285aa30f3a7adc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.175.0/lightdash-cli-3.175.0-macos-x64.tar.gz"
      sha256 "0f2ddf31b8ecbb38ee5fa1a2a118f07d49740ef35197ae5f481d7fcc40e27824"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.175.0/lightdash-cli-3.175.0-linux-x64.tar.gz"
    sha256 "da67031e2f08c9419bf7e43af0bcf7774c41fc2a514de668e4ac20c28a0021fc"

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
