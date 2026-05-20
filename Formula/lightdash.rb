class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2989.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.2/lightdash-cli-0.2989.2-macos-arm64.tar.gz"
      sha256 "b7abde3d38fce4835411dba7fab7c78ccae19acb7c46d141fc9fb07da95b6b53"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2989.2/lightdash-cli-0.2989.2-macos-x64.tar.gz"
      sha256 "1e04ef2b2708ccb3f38ee4be255e2f6e359c4cfcd4e4dd3efbed77ab8ba66338"
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
