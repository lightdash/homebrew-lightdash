class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.218.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.218.0/lightdash-cli-3.218.0-macos-arm64.tar.gz"
      sha256 "434fd763e7ceed8dd2a63f9cd514f004e37373ccf84e39046eda3bad21878ccf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.218.0/lightdash-cli-3.218.0-macos-x64.tar.gz"
      sha256 "4ba4863c6d6eba9cb2facc9deeb5695a88140294ed7f1462c6a57a6d24c481f6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.218.0/lightdash-cli-3.218.0-linux-x64.tar.gz"
    sha256 "bbdb1d441b80aaf1735b57640818894e31396900f95880e0a8a1f97ab6d59c06"

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
