class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3162.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.2/lightdash-cli-0.3162.2-macos-arm64.tar.gz"
      sha256 "82b326e84ff19a7a5e9bab0fba226485db537b74dee380521f27800404a8655d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3162.2/lightdash-cli-0.3162.2-macos-x64.tar.gz"
      sha256 "3a2ef6c0e308c4d543ebcaf374aec092657df50e81086e28534498016a4cba1f"
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
