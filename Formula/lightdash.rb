class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.556.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.556.0/lightdash-cli-2.556.0-macos-arm64.tar.gz"
      sha256 "3244221be6650448d0ffb9a466b63abfe1837807746fb57ef42ae69fe5249e65"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.556.0/lightdash-cli-2.556.0-macos-x64.tar.gz"
      sha256 "d8ef6e9b8d3655dceac63368c92415f603dc558c723701d7a96ed4574444b254"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.556.0/lightdash-cli-2.556.0-linux-x64.tar.gz"
    sha256 "b9cbcaf7f03487623ab55be0a58245588e808e7381b8e22c92c61f5915107081"

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
