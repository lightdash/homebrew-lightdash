class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3369.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3369.0/lightdash-cli-0.3369.0-macos-arm64.tar.gz"
      sha256 "4ad4cc31525adb5b6695e829992f25195dc7e83b322674f7e3a7f9baeda06b71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3369.0/lightdash-cli-0.3369.0-macos-x64.tar.gz"
      sha256 "8e947193f57dd71fd924c8327c0b52587f450b036b00efa203b2567825d4772c"
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
