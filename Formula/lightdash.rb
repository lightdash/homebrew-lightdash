class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2343.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2343.1/lightdash-cli-0.2343.1-macos-arm64.tar.gz"
      sha256 "19c571dbc90ce81bb76f3b9c9ecbefd792c85b48efeb9cc2d27ed62908d9743f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2343.1/lightdash-cli-0.2343.1-macos-x64.tar.gz"
      sha256 "2793be0973b55ded30aaac959d90271131448c78713d722b0c9c7bab208ad088"
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
