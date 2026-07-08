class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3338.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3338.0/lightdash-cli-0.3338.0-macos-arm64.tar.gz"
      sha256 "4ea4296f48e7c97a9ff7eebaa1bf6ea3ce5205da0d444b7be1d89596c28a1ab2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3338.0/lightdash-cli-0.3338.0-macos-x64.tar.gz"
      sha256 "681b686ecb1bf5b093a060305aab273f9e24221c05abe156078ffd270ccd6221"
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
