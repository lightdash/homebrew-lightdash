class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3016.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3016.0/lightdash-cli-0.3016.0-macos-arm64.tar.gz"
      sha256 "e2455eb91bcd4a0cb165d19459e8acdd4f41e9e7e094d88756872d4ef1c78f51"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3016.0/lightdash-cli-0.3016.0-macos-x64.tar.gz"
      sha256 "c76de1126be44baed595d28b8fb8fa3d6b83680a0243fa305901af78c222a788"
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
