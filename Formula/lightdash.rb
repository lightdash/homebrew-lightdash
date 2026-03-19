class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2639.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.1/lightdash-cli-0.2639.1-macos-arm64.tar.gz"
      sha256 "9666c914d626a64cfd117a71f3dd2875604612bef84aa64e9f0c3a5434f46306"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.1/lightdash-cli-0.2639.1-macos-x64.tar.gz"
      sha256 "71392655147d58c427921348410a2ded82bc3ef40975aa69934a9a1a0b6890f1"
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
