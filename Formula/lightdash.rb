class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.73.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.1/lightdash-cli-3.73.1-macos-arm64.tar.gz"
      sha256 "a257e90152c25583c6fe205becf2057e4c1efeb35bc5602a1c87355b79bc94e6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.1/lightdash-cli-3.73.1-macos-x64.tar.gz"
      sha256 "63114359c606ae6ff1da9d63fad92f8c685f74ab07313bb7e9972f0651e2b268"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.73.1/lightdash-cli-3.73.1-linux-x64.tar.gz"
    sha256 "e5811d18cd542400b5e986c7216197e712b63f84b650fd5af574ef59574757dc"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
