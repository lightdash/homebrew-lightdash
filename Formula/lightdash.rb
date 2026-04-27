class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2813.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.1/lightdash-cli-0.2813.1-macos-arm64.tar.gz"
      sha256 "3a91ee7b293aa2259171c74e5497b4aa892ba17da3d62b6271d0ec9019054041"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.1/lightdash-cli-0.2813.1-macos-x64.tar.gz"
      sha256 "9fbeb61d563efb566aecf764082bf8a275f91efe07548a15087ebf35ba701828"
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
