class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.4/lightdash-cli-0.3009.4-macos-arm64.tar.gz"
      sha256 "5e48cbfdf37f93cedf1ac70107d66c50f75ee10f003d5c6efc331c44c8b59392"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.4/lightdash-cli-0.3009.4-macos-x64.tar.gz"
      sha256 "7c73642b72f6c32fe55b6c6d138acfa8198f3ad72c9a73b448d05751b10697be"
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
