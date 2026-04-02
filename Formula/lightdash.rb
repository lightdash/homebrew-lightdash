class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2717.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2717.0/lightdash-cli-0.2717.0-macos-arm64.tar.gz"
      sha256 "6aafa57852f286103bca75e9bcc394447d9e383a3fb69afaf1c04011e51c149d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2717.0/lightdash-cli-0.2717.0-macos-x64.tar.gz"
      sha256 "c3f3302bbfc37f857a94acefa9b856c37c77c75669344988f7cd2894af8df5d0"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
