class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.7/lightdash-cli-0.2262.7-macos-arm64.tar.gz"
      sha256 "cdd25af9493133342922bae10bbfbeda79e5807cbedbcbd09932fe1c626e87e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.7/lightdash-cli-0.2262.7-macos-x64.tar.gz"
      sha256 "62945267210b2fa9ea482267cfe8ef14e8c519ef833978ba587e2efc57c62b16"
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
